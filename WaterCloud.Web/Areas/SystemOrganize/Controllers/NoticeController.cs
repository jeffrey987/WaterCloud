﻿/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/

using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;
using WaterCloud.Code;
using WaterCloud.Domain.SystemOrganize;
using WaterCloud.Service.SystemOrganize;

namespace WaterCloud.Web.Areas.SystemOrganize.Controllers
{
	[Area("SystemOrganize")]
	public class NoticeController : BaseController
	{
		public NoticeService _service { get; set; }

		[HandlerAjaxOnly]
		[IgnoreAntiforgeryToken]
		public async Task<ActionResult> GetGridJson(SoulPage<NoticeEntity> pagination, string keyword)
		{
			if (string.IsNullOrEmpty(pagination.field))
			{
				pagination.field = "F_Id";
				pagination.order = "desc";
			}
			var data = await _service.GetLookList(pagination, keyword);
			return Content(pagination.setData(data).ToJson());
		}

		[HttpGet]
		[HandlerAjaxOnly]
		public async Task<ActionResult> GetListJson(string keyword)
		{
			var data = await _service.GetList(keyword);
			return Content(data.ToJson());
		}

		[HttpGet]
		[HandlerAjaxOnly]
		public async Task<ActionResult> GetFormJson(string keyValue)
		{
			var data = await _service.GetLookForm(keyValue);
			return Content(data.ToJson());
		}

		[HttpPost]
		[HandlerAjaxOnly]
		public async Task<ActionResult> SubmitForm(NoticeEntity noticeEntity, string keyValue)
		{
			try
			{
				await _service.SubmitForm(noticeEntity, keyValue);
				return await Success("操作成功。", "", keyValue);
			}
			catch (Exception ex)
			{
				return await Error(ex.Message, "", keyValue);
			}
		}

		[HttpPost]
		[HandlerAjaxOnly]
		[HandlerAuthorize]
		public async Task<ActionResult> DeleteForm(string keyValue)
		{
			try
			{
				await _service.DeleteForm(keyValue);
				return await Success("操作成功。", "", keyValue, DbLogType.Delete);
			}
			catch (Exception ex)
			{
				return await Error(ex.Message, "", keyValue, DbLogType.Delete);
			}
		}
	}
}