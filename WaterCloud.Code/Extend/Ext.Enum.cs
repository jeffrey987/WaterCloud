﻿using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection;

namespace WaterCloud.Code
{
	public static partial class Extensions
	{
		#region 枚举成员转成dictionary类型

		/// <summary>
		/// 转成dictionary类型
		/// </summary>
		/// <param name="enumType"></param>
		/// <returns></returns>
		public static Dictionary<int, string> EnumToDictionary(this Type enumType)
		{
			Dictionary<int, string> dictionary = new Dictionary<int, string>();
			Type typeDescription = typeof(DescriptionAttribute);
			FieldInfo[] fields = enumType.GetFields();
			int sValue = 0;
			string sText = string.Empty;
			foreach (FieldInfo field in fields)
			{
				if (field.FieldType.IsEnum)
				{
					sValue = ((int)enumType.InvokeMember(field.Name, BindingFlags.GetField, null, null, null));
					object[] arr = field.GetCustomAttributes(typeDescription, true);
					if (arr.Length > 0)
					{
						DescriptionAttribute da = (DescriptionAttribute)arr[0];
						sText = da.Description;
					}
					else
					{
						sText = field.Name;
					}
					dictionary.Add(sValue, sText);
				}
			}
			return dictionary;
		}

		/// <summary>
		/// 枚举成员转成键值对Json字符串
		/// </summary>
		/// <param name="enumType"></param>
		/// <returns></returns>
		public static string EnumToDictionaryString(this Type enumType)
		{
			List<KeyValuePair<int, string>> dictionaryList = EnumToDictionary(enumType).ToList();
			var sJson = JsonConvert.SerializeObject(dictionaryList);
			return sJson;
		}

		#endregion 枚举成员转成dictionary类型

		#region 获取枚举的描述

		/// <summary>
		/// 获取枚举值对应的描述
		/// </summary>
		/// <param name="enumType"></param>
		/// <returns></returns>
		public static string GetDescription(this System.Enum enumType)
		{
			FieldInfo EnumInfo = enumType.GetType().GetField(enumType.ToString());
			if (EnumInfo != null)
			{
				DescriptionAttribute[] EnumAttributes = (DescriptionAttribute[])EnumInfo.GetCustomAttributes(typeof(DescriptionAttribute), false);
				if (EnumAttributes.Length > 0)
				{
					return EnumAttributes[0].Description;
				}
			}
			return enumType.ToString();
		}

		#endregion 获取枚举的描述

		#region 根据值获取枚举的描述

		public static string GetDescriptionByEnum<T>(this object obj)
		{
			var tEnum = System.Enum.Parse(typeof(T), obj.ParseToString()) as System.Enum;
			var description = tEnum.GetDescription();
			return description;
		}

		/// <summary>
		/// 枚举
		/// </summary>
		/// <param name="enumType"></param>
		/// <returns></returns>
		public static string ToDescription(this Enum enumType)
		{
			if (enumType == null)
				return "";

			System.Reflection.FieldInfo fieldInfo = enumType.GetType().GetField(enumType.ToString());

			object[] attribArray = fieldInfo.GetCustomAttributes(false);
			if (attribArray.Length == 0)
				return enumType.ToString();
			else
				return (attribArray[0] as DescriptionAttribute).Description;
		}

		#endregion 根据值获取枚举的描述
	}
}