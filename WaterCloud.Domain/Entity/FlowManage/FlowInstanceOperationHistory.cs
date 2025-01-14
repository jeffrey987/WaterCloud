﻿//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated by a CodeSmith Template.
//
//     DO NOT MODIFY contents of this file. Changes to this
//     file will be lost if the code is regenerated.
//     Author:Yubao Li
// </autogenerated>
//------------------------------------------------------------------------------
using SqlSugar;
using System;

namespace WaterCloud.Domain.FlowManage
{
	/// <summary>
	/// 工作流实例操作记录
	/// </summary>
	[SugarTable("oms_flowinstanceinfo")]
	public class FlowInstanceOperationHistory
	{
		/// <summary>
		/// 主键Id
		/// </summary>
		/// <returns></returns>
		[SugarColumn(ColumnName = "F_Id", IsPrimaryKey = true, ColumnDescription = "主键Id")]
		public string F_Id { get; set; }

		/// <summary>
		/// 实例进程Id
		/// </summary>
		[SugarColumn(IsNullable = false, ColumnName = "F_InstanceId", ColumnDataType = "nvarchar(50)", ColumnDescription = "实例进程Id")]
		public string F_InstanceId { get; set; }

		/// <summary>
		/// 操作内容
		/// </summary>
		[SugarColumn(IsNullable = true, ColumnName = "F_Content", ColumnDataType = "nvarchar(200)", ColumnDescription = "操作内容")]
		public string F_Content { get; set; }

		/// <summary>
		/// 创建时间
		/// </summary>
		[SugarColumn(IsNullable = false, ColumnDescription = "类别名称")]
		public DateTime? F_CreatorTime { get; set; }

		/// <summary>
		/// 创建用户主键
		/// </summary>
		[SugarColumn(IsNullable = true, ColumnName = "F_CreatorUserId", ColumnDataType = "nvarchar(50)", ColumnDescription = "创建用户主键")]
		public string F_CreatorUserId { get; set; }

		/// <summary>
		/// 创建用户
		/// </summary>
		[SugarColumn(IsNullable = true, ColumnName = "F_CreatorUserName", ColumnDataType = "nvarchar(50)", ColumnDescription = "创建用户")]
		public string F_CreatorUserName { get; set; }

		/// <summary>
		/// 表单数据
		/// </summary>
		[SugarColumn(IsNullable = true, ColumnName = "F_FrmData", ColumnDataType = "longtext", ColumnDescription = "表单数据")]
		public string F_FrmData { get; set; }
	}
}