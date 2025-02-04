﻿using Jaina;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using WaterCloud.Code;
using WaterCloud.Domain.FileManage;
using WaterCloud.Service.Event;
using WaterCloud.Service.FileManage;
using WaterCloud.Service.SystemOrganize;

namespace WaterCloud.Web.Areas.FileManage.Controllers
{
	/// <summary>
	/// 创 建：超级管理员
	/// 日 期：2020-07-22 12:04
	/// 描 述：文件管理控制器类
	/// </summary>
	[Area("FileManage")]
	public class UploadfileController : BaseController
	{
		public UploadfileService _service { get; set; }
		public SystemSetService _setService { get; set; }

		#region 获取数据

		[HandlerAjaxOnly]
		[IgnoreAntiforgeryToken]
		public async Task<ActionResult> GetGridJson(SoulPage<UploadfileEntity> pagination, string keyword)
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

		#endregion 获取数据

		#region 提交数据

		[HttpPost]
		[HandlerLogin]
		[IgnoreAntiforgeryToken]
		public async Task<ActionResult> Upload(string fileby, int filetype = 0)
		{
			try
			{
				//1图片，2excel,3template
				int[] filetypes = { 1, 2,3 };
				if (!filetypes.Contains(filetype))
				{
					throw new Exception("请指定文件格式");
				}
				string stemp = "local";
				if (_service.currentuser.DbNumber != GlobalContext.SystemConfig.MainDbNumber)
				{
					var temp = await _setService.GetForm(_service.currentuser.CompanyId);
					if (temp != null)
					{
						stemp = temp.F_CompanyName;
					}
					else
					{
						throw new Exception("租户不存在");
					}
				}
				var files = HttpContext.Request.Form.Files;
				long size = files.Sum(f => f.Length);
				if (size > 104857600)
				{
					throw new Exception("大小必须小于100M");
				}
				List<object> list = new List<object>();
				foreach (var file in files)
				{
					var fileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');
					var ispic = FileHelper.IsPicture(fileName);
					if (filetype == 1 && !ispic)
					{
						throw new Exception("请上传图片");
					}
					var isexcle = FileHelper.IsExcel(fileName);
					if (filetype == 2 && !isexcle)
					{
						throw new Exception("请上传Excel");
					}
					if (ispic)
					{
						filetype = 1;
					}
					if (isexcle)
					{
						filetype = 2;
					}
					string fileValue = "";
					if (fileby == "公司logo")
					{
						fileValue = "icon";
					}
					else
					{
						fileValue = "file";
					}
					string filePath = "";
					fileName = Utils.CreateNo() + fileName.Substring(fileName.LastIndexOf("."));
					UploadfileEntity entity = new UploadfileEntity();
					if (!string.IsNullOrEmpty(stemp))
					{
						entity.F_FilePath = $@"/" + fileValue + $@"/" + stemp + $@"/" + DateTime.Now.ToString("yyyyMMdd") + $@"/" + fileName;
						filePath = GlobalContext.HostingEnvironment.WebRootPath + $@"/" + fileValue + $@"/" + stemp + $@"/" + DateTime.Now.ToString("yyyyMMdd") + $@"/";
					}
					string fileFullName = filePath + fileName;
					entity.Create();
					entity.F_EnabledMark = true;
					entity.F_FileBy = fileby;
					entity.F_FileType = filetype;
					entity.F_CreatorUserName = _service.currentuser.UserName;
					entity.F_FileSize = size.ToIntOrNull();

					entity.F_FileName = fileName;
					entity.F_OrganizeId = _service.currentuser.OrganizeId;
					if (fileName.LastIndexOf(".") >= 0)
					{
						entity.F_FileExtension = fileName.Substring(fileName.LastIndexOf("."));
					}
					if (!await SubmitForm(entity, ""))
					{
						throw new Exception("数据库操作失败");
					}
					if (!Directory.Exists(filePath))
					{
						Directory.CreateDirectory(filePath);
					}
					using (FileStream fs = System.IO.File.Create(fileFullName))
					{
						file.CopyTo(fs);
						fs.Flush();
					}
					list.Add(new { src = entity.F_FilePath, title = fileName });
				}
				var log = await _logService.CreateLog("操作成功。", "", "", DbLogType.Visit);
				await GlobalContext.GetService<IEventPublisher>().PublishAsync(new BaseEventSource("Log:create", log,_service.currentuser));
				return Content(new { code = 0, msg = "操作成功", data = list }.ToJson());
			}
			catch (Exception ex)
			{
				var log = await _logService.CreateLog(ex.Message, "", "", DbLogType.Visit, true);
				await GlobalContext.GetService<IEventPublisher>().PublishAsync(new BaseEventSource("Log:create", log, _service.currentuser));
				return Content(new { code = 400, msg = "操作失败," + ex.Message }.ToJson());
			}
		}

		[HttpPost]
		[HandlerLogin]
		[IgnoreAntiforgeryToken]
		public async Task<ActionResult> UploadICE(int filetype = 3)
		{
			try
			{
				string stemp = "local";
				if (_service.currentuser.DbNumber != GlobalContext.SystemConfig.MainDbNumber)
				{
					var temp = await _setService.GetForm(_service.currentuser.CompanyId);
					if (temp != null)
					{
						stemp = temp.F_CompanyName;
					}
					else
					{
						throw new Exception("租户不存在");
					}
				}
				var files = HttpContext.Request.Form.Files;
				long size = files.Sum(f => f.Length);
				if (size > 104857600)
				{
					throw new Exception("大小必须小于100M");
				}
				List<object> list = new List<object>();
				foreach (var file in files)
				{
					var fileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');
					var ispic = FileHelper.IsPicture(fileName);
					if (filetype == 1 && !ispic)
					{
						throw new Exception("请上传图片");
					}
					var isexcle = FileHelper.IsExcel(fileName);
					if (filetype == 2 && !isexcle)
					{
						throw new Exception("请上传Excel");
					}
					if (ispic)
					{
						filetype = 1;
					}
					if (isexcle)
					{
						filetype = 2;
					}
					string fileValue = "file";
					string filePath = "";
					fileName = Utils.CreateNo() + fileName.Substring(fileName.LastIndexOf("."));
					UploadfileEntity entity = new UploadfileEntity();
					if (!string.IsNullOrEmpty(stemp))
					{
						entity.F_FilePath = $@"/" + fileValue + $@"/" + stemp + $@"/" + DateTime.Now.ToString("yyyyMMdd") + $@"/" + fileName;
						filePath = GlobalContext.HostingEnvironment.WebRootPath + $@"/" + fileValue + $@"/" + stemp + $@"/" + DateTime.Now.ToString("yyyyMMdd") + $@"/";
					}
					string fileFullName = filePath + fileName;
					entity.Create();
					entity.F_EnabledMark = true;
					entity.F_FileBy = "ICE富文本";
					entity.F_FileType = filetype;
					entity.F_CreatorUserName = _service.currentuser.UserName;
					entity.F_FileSize = size.ToIntOrNull();

					entity.F_FileName = fileName;
					entity.F_OrganizeId = _service.currentuser.OrganizeId;
					if (fileName.LastIndexOf(".") >= 0)
					{
						entity.F_FileExtension = fileName.Substring(fileName.LastIndexOf("."));
					}
					if (!await SubmitForm(entity, ""))
					{
						throw new Exception("数据库操作失败");
					}
					if (!Directory.Exists(filePath))
					{
						Directory.CreateDirectory(filePath);
					}
					using (FileStream fs = System.IO.File.Create(fileFullName))
					{
						file.CopyTo(fs);
						fs.Flush();
					}
					list.Add(new { url = entity.F_FilePath, name = fileName,error = 0 });
				}
				var log = await _logService.CreateLog("操作成功。", "", "", DbLogType.Visit);
				await GlobalContext.GetService<IEventPublisher>().PublishAsync(new BaseEventSource("Log:create", log, _service.currentuser));
				return Content(list.ToJson());
			}
			catch (Exception ex)
			{
				var log = await _logService.CreateLog(ex.Message, "", "", DbLogType.Visit, true);
				await GlobalContext.GetService<IEventPublisher>().PublishAsync(new BaseEventSource("Log:create", log, _service.currentuser));
				return Content(new { error = 1 }.ToJson());
			}
		}

		[HttpGet]
		[HandlerLogin]
		[HandlerAuthorize]
		public async Task<ActionResult> Download(string keyValue)
		{
			var data = await _service.GetForm(keyValue);
			string filePath = GlobalContext.HostingEnvironment.WebRootPath + $@"/" + data.F_FilePath;
			if (!FileHelper.IsExistFile(filePath))
			{
				return Error("文件不存在");
			}
			//定义并实例化一个内存流，以存放图片的字节数组。
			MemoryStream ms = new MemoryStream();
			//图片读入FileStream
			FileStream f = new FileStream(filePath, FileMode.Open);
			//把FileStream写入MemoryStream
			ms.SetLength(f.Length);
			f.Read(ms.GetBuffer(), 0, (int)f.Length);
			ms.Flush();
			f.Close();
			string filename = DateTime.Now.ToString("yyyyMMdd_HHmmss") + data.F_FileExtension;
			var contentType = MimeMapping.GetMimeMapping(filename);
			return File(ms, contentType, filename);
		}

		[HttpPost]
		[HandlerAjaxOnly]
		public async Task<bool> SubmitForm(UploadfileEntity entity, string keyValue)
		{
			try
			{
				await _service.SubmitForm(entity, keyValue);
				await Success("操作成功。", "", keyValue);
				return true;
			}
			catch (Exception ex)
			{
				await Error(ex.Message, "", keyValue);
				return false;
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

		#endregion 提交数据
	}
}