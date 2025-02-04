﻿using System;

namespace WaterCloud.Code
{
	/// <summary>
	/// string扩展类
	/// </summary>
	public static partial class Extensions
	{
		/// <summary>
		/// 从分隔符开始向尾部截取字符串
		/// </summary>
		/// <param name="this">源字符串</param>
		/// <param name="separator">分隔符</param>
		/// <param name="lastIndexOf">true：从最后一个匹配的分隔符开始截取，false：从第一个匹配的分隔符开始截取，默认：true</param>
		/// <returns>string</returns>
		public static string Substring(this string @this, string separator, bool lastIndexOf = true)
		{
			var startIndex = (lastIndexOf ?
				@this.LastIndexOf(separator, StringComparison.OrdinalIgnoreCase) :
				@this.IndexOf(separator, StringComparison.OrdinalIgnoreCase)) +
				separator.Length;

			var length = @this.Length - startIndex;
			return @this.Substring(startIndex, length);
		}
		#region 字符串截取第一个
		public static string ReplaceFrist(this string str, string oldChar, string newChar)
		{
			int idx = str.IndexOf(oldChar);
			str = str.Remove(idx, oldChar.Length);
			str = str.Insert(idx, newChar);
			return str;
		}
		#endregion
	}
}