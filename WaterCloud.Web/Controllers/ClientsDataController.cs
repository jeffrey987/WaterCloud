﻿/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/

using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WaterCloud.Code;
using WaterCloud.Domain;
using WaterCloud.Domain.SystemManage;
using WaterCloud.Service.InfoManage;
using WaterCloud.Service.SystemManage;
using WaterCloud.Service.SystemOrganize;
using WaterCloud.Service.SystemSecurity;

namespace WaterCloud.Web.Controllers
{
	[HandlerLogin]
	public class ClientsDataController : Controller
	{
		/// <summary>
		/// 缓存操作类
		/// </summary>
		private string cacheKeyOperator = GlobalContext.SystemConfig.ProjectPrefix + "_operator_";// +登录者token

		public QuickModuleService _quickModuleService { get; set; }
		public NoticeService _noticeService { get; set; }
		public UserService _userService { get; set; }
		public ModuleService _moduleService { get; set; }
		public LogService _logService { get; set; }
		public RoleAuthorizeService _roleAuthorizeService { get; set; }
		public ItemsDataService _itemsDetailService { get; set; }
		public ItemsTypeService _itemsService { get; set; }
		public SystemSetService _setService { get; set; }
		public MessageService _msgService { get; set; }

		/// <summary>
		/// 初始数据加载请求方法
		/// </summary>
		/// <returns></returns>
		[HttpGet]
		[HandlerAjaxOnly]
		[AllowAnonymous]
		public async Task<ActionResult> GetClientsDataJson()
		{
			var data = new
			{
				dataItems = await this.GetDataItemList(),
				authorizeButton = await this.GetMenuButtonListNew(),
				moduleFields = await this.GetMenuFields(),
				authorizeFields = await this.GetMenuFieldsListNew(),
			};
			return Content(data.ToJson());
		}

		/// <summary>
		/// 清空缓存请求方法
		/// </summary>
		/// <returns></returns>
		[HttpGet]
		public async Task<ActionResult> ClearCache()
		{
			try
			{
				if (!_setService.currentuser.IsSuperAdmin)
				{
					return Content(new { code = 0, msg = "此功能需要管理员权限" }.ToJson());
				}
				await CacheHelper.FlushAllAsync();
				await OperatorProvider.Provider.EmptyCurrent("pc_");
				return Content(new { code = 1, msg = "服务端清理缓存成功" }.ToJson());
			}
			catch (Exception)
			{
				return Content(new { code = 0, msg = "此功能需要管理员权限" }.ToJson());
			}
		}

		/// <summary>
		/// 模块字段权限
		/// </summary>
		/// <returns></returns>
		private async Task<object> GetMenuFields()
		{
			var roleId = _userService.currentuser.RoleId;
			if (roleId == null && _userService.currentuser.IsAdmin)
			{
				roleId = "admin";
			}
			else if (roleId == null && !_userService.currentuser.IsSuperAdmin)
			{
				roleId = "visitor";
			}
			Dictionary<string, bool> dictionary = new Dictionary<string, bool>();
			var list = await _roleAuthorizeService.GetMenuList(roleId);
			foreach (ModuleEntity item in list.Where(a => !string.IsNullOrEmpty(a.F_UrlAddress)))
			{
				dictionary.Add(item.F_UrlAddress, item.F_IsFields ?? false);
			}
			return dictionary;
		}

		/// <summary>
		/// 快捷菜单列表
		/// </summary>
		/// <returns></returns>
		private async Task<object> GetQuickModuleList()
		{
			var currentuser = _userService.currentuser;
			if (currentuser.UserId == null)
			{
				return null;
			}
			var userId = currentuser.UserId;
			var data = await _quickModuleService.GetQuickModuleList(userId);
			return data;
		}

		/// <summary>
		/// 获取公告信息
		/// </summary>
		/// <returns></returns>
		private async Task<object> GetNoticeList()
		{
			var data = (await _noticeService.GetList("")).Where(a => a.F_EnabledMark == true).OrderByDescending(a => a.F_CreatorTime).Take(6).ToList();
			return data;
		}

		/// <summary>
		/// 初始菜单列表请求方法
		/// </summary>
		/// <returns></returns>
		[HttpGet]
		public async Task<ActionResult> GetInitDataJson()
		{
			var currentuser = _userService.currentuser;
			if (currentuser.UserId == null)
			{
				return Content("");
			}
			var data = await GetMenuListNew();
			return Content(data);
		}

		/// <summary>
		/// 获取公告信息请求方法
		/// </summary>
		/// <returns></returns>
		[HttpGet]
		public async Task<ActionResult> GetNoticeInfo()
		{
			var data = await this.GetNoticeList();
			return Content(data.ToJson());
		}

		/// <summary>
		/// 获取当前用户信息请求方法
		/// </summary>
		/// <returns></returns>
		[HttpGet]
		[HandlerAjaxOnly]
		[AllowAnonymous]
		public async Task<ActionResult> GetUserCode()
		{
			var currentuser = _userService.currentuser;
			if (currentuser.UserId == null)
			{
				return Content("");
			}
			var data = await _userService.GetFormExtend(currentuser.UserId);
			var msglist = await _msgService.GetUnReadListJson();
			data.MsgCout = msglist.Count();
			return Content(data.ToJson());
		}

		/// <summary>
		/// 获取快捷菜单请求方法
		/// </summary>
		/// <returns></returns>
		[HttpGet]
		public async Task<ActionResult> GetQuickModule()
		{
			try
			{
				var data = await this.GetQuickModuleList();
				return Content(data.ToJson());
			}
			catch (Exception)
			{
				return Content("");
			}
		}

		/// <summary>
		/// 获取数据信息接口
		/// </summary>
		/// <returns></returns>
		[HttpGet]
		public async Task<ActionResult> GetCoutData()
		{
			var currentuser = _userService.currentuser;
			if (currentuser.UserId == null)
			{
				return Content("");
			}
			int usercout = (await _userService.GetUserList("")).Count();
			var temp = await CacheHelper.GetAsync<OperatorUserInfo>(cacheKeyOperator + "info_" + currentuser.UserId);
			int logincout = temp != null && temp.F_LogOnCount != null ? (int)temp.F_LogOnCount : 0;
			int modulecout = (await _moduleService.GetList()).Where(a => a.F_EnabledMark == true && a.F_UrlAddress != null).Count();
			int logcout = (await _logService.GetList()).Count();
			var data = new { usercout = usercout, logincout = logincout, modulecout = modulecout, logcout = logcout };
			return Content(data.ToJson());
		}

		/// <summary>
		/// 菜单按钮信息
		/// </summary>
		/// <returns></returns>
		private async Task<string> GetMenuListNew()
		{
			var currentuser = _userService.currentuser;
			var roleId = currentuser.RoleId;
			StringBuilder sbJson = new StringBuilder();
			InitEntity init = new InitEntity();
			init.homeInfo = new HomeInfoEntity();
			init.homeInfo.href = GlobalContext.SystemConfig.HomePage;
			init.logoInfo = new LogoInfoEntity();
			var systemset = await _setService.GetForm(currentuser.CompanyId);
			//修改主页及logo参数
			init.logoInfo.title = systemset.F_LogoCode;
			init.logoInfo.image = ".." + systemset.F_Logo;
			init.menuInfo = new List<MenuInfoEntity>();
			init.menuInfo = ToMenuJsonNew(await _roleAuthorizeService.GetMenuList(roleId), "0");
			sbJson.Append(init.ToJson());
			return sbJson.ToString();
		}

		/// <summary>
		/// 菜单信息
		/// </summary>
		/// <param name="data"></param>
		/// <param name="parentId"></param>
		/// <returns></returns>
		private List<MenuInfoEntity> ToMenuJsonNew(List<ModuleEntity> data, string parentId)
		{
			List<MenuInfoEntity> list = new List<MenuInfoEntity>();
			List<ModuleEntity> entitys = data.FindAll(t => t.F_ParentId == parentId);
			if (entitys.Count > 0)
			{
				foreach (var item in entitys)
				{
					MenuInfoEntity munu = new MenuInfoEntity();
					munu.title = item.F_FullName;
					munu.icon = item.F_Icon;
					munu.href = item.F_UrlAddress;
					switch (item.F_Target)
					{
						case "iframe":
							munu.target = "_self";
							break;

						case "open":
							munu.target = "_open";
							break;

						case "blank":
							munu.target = "_blank";
							break;

						default:
							munu.target = "_self";
							break;
					}
					if (data.FindAll(t => t.F_ParentId == item.F_Id).Count > 0)
					{
						munu.child = new List<MenuInfoEntity>();
						munu.child = ToMenuJsonNew(data, item.F_Id);
					}
					if (item.F_IsMenu == true)
					{
						list.Add(munu);
					}
				};
			}
			return list;
		}

		/// <summary>
		/// 字段信息
		/// </summary>
		/// <returns></returns>
		private async Task<object> GetDataItemList()
		{
			var itemdata = await _itemsDetailService.GetList();
			Dictionary<string, object> dictionaryItem = new Dictionary<string, object>();
			var itemlist = await _itemsService.GetList();
			foreach (var item in itemlist.Where(a => a.F_EnabledMark == true).ToList())
			{
				var dataItemList = itemdata.FindAll(t => t.F_ItemId == item.F_Id);
				Dictionary<string, string> dictionaryItemList = new Dictionary<string, string>();
				foreach (var itemList in dataItemList)
				{
					dictionaryItemList.Add(itemList.F_ItemCode, itemList.F_ItemName);
				}
				dictionaryItem.Add(item.F_EnCode, dictionaryItemList);
			}

			return dictionaryItem;
		}

		/// <summary>
		/// 菜单按钮信息
		/// </summary>
		/// <returns></returns>
		private async Task<object> GetMenuButtonListNew()
		{
			var currentuser = _userService.currentuser;
			var roleId = currentuser.RoleId;
			if (roleId == null && currentuser.IsAdmin)
			{
				roleId = "admin";
			}
			else if (roleId == null && !currentuser.IsAdmin)
			{
				roleId = "visitor";
			}
			var rolelist = roleId.Split(',');
			var dictionarylist = new Dictionary<string, List<ModuleButtonEntity>>();
			if (currentuser.UserId == null)
			{
				return dictionarylist;
			}
			foreach (var roles in rolelist)
			{
				var dictionarytemp = new Dictionary<string, List<ModuleButtonEntity>>();
				var data = await _roleAuthorizeService.GetButtonList(roles);
				var dataModuleId = data.Where(a => a.F_ModuleId != null && a.F_ModuleId != "" && a.F_EnabledMark == true).Distinct(new ExtList<ModuleButtonEntity>("F_ModuleId"));
				foreach (ModuleButtonEntity item in dataModuleId)
				{
					var buttonList = data.Where(t => t.F_ModuleId == item.F_ModuleId && t.F_EnabledMark == true).ToList();
					dictionarytemp.Add(item.F_ModuleId, buttonList);
					if (dictionarylist.ContainsKey(item.F_ModuleId))
					{
						dictionarylist[item.F_ModuleId].AddRange(buttonList);
						dictionarylist[item.F_ModuleId] = dictionarylist[item.F_ModuleId].GroupBy(p => p.F_Id).Select(q => q.First()).ToList();
					}
					else
					{
						dictionarylist.Add(item.F_ModuleId, buttonList);
					}
				}
			}
			return dictionarylist;
		}

		/// <summary>
		/// 菜单字段信息
		/// </summary>
		/// <returns></returns>
		private async Task<object> GetMenuFieldsListNew()
		{
			var currentuser = _userService.currentuser;
			var roleId = currentuser.RoleId;
			if (roleId == null && currentuser.IsAdmin)
			{
				roleId = "admin";
			}
			else if (roleId == null && !currentuser.IsAdmin)
			{
				roleId = "visitor";
			}
			var rolelist = roleId.Split(',');
			var dictionarylist = new Dictionary<string, List<ModuleFieldsEntity>>();
			if (currentuser.UserId == null)
			{
				return dictionarylist;
			}
			foreach (var roles in rolelist)
			{
				var dictionarytemp = new Dictionary<string, List<ModuleFieldsEntity>>();
				var data = await _roleAuthorizeService.GetFieldsList(roles);
				var dataModuleId = data.Where(a => a.F_ModuleId != null && a.F_ModuleId != "" && a.F_EnabledMark == true).Distinct(new ExtList<ModuleFieldsEntity>("F_ModuleId"));
				foreach (ModuleFieldsEntity item in dataModuleId)
				{
					var buttonList = data.Where(t => t.F_ModuleId == item.F_ModuleId && t.F_EnabledMark == true).ToList();
					dictionarytemp.Add(item.F_ModuleId, buttonList);
					if (dictionarylist.ContainsKey(item.F_ModuleId))
					{
						dictionarylist[item.F_ModuleId].AddRange(buttonList);
						dictionarylist[item.F_ModuleId] = dictionarylist[item.F_ModuleId].GroupBy(p => p.F_Id).Select(q => q.First()).ToList();
					}
					else
					{
						dictionarylist.Add(item.F_ModuleId, buttonList);
					}
				}
			}
			return dictionarylist;
		}
	}
}