﻿using Microsoft.AspNetCore.SignalR;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using WaterCloud.Code;
using WaterCloud.Domain.InfoManage;
using WaterCloud.Service.InfoManage;
using WaterCloud.Service.SystemOrganize;

namespace WaterCloud.Service
{
	public class MessageHub : Hub
	{
		private string cacheKey = GlobalContext.SystemConfig.ProjectPrefix + "_hubuserinfo_";
		private readonly UserService _service;
		private readonly MessageService _msgService;
		private string cacheKeyOperator = GlobalContext.SystemConfig.ProjectPrefix + "_operator_";// +登录者tokens

		public MessageHub(UserService service, MessageService msgService)
		{
			_service = service;
			_msgService = msgService;
		}

		// <summary>
		/// 客户端登录到服务器
		/// </summary>
		/// <param name="token"></param>
		public async Task SendLogin(string token)
		{
			var user = _service.currentuser;
			if (user == null || user.UserId == null)
			{
				user = CacheHelper.Get<OperatorModel>(cacheKeyOperator + token);
			}
			if (user != null && user.CompanyId != null)
			{
				//一个公司一个分组
				await Groups.AddToGroupAsync(Context.ConnectionId, user.CompanyId);
				//将用户信息存进缓存
				var list = await CacheHelper.GetAsync<List<string>>(cacheKey + user.UserId) ?? new List<string>();
				//登录计数
				var onlinelist = await CacheHelper.GetAsync<List<string>>(cacheKey + "list_" + user.CompanyId) ?? new List<string>();
				list.Add(Context.ConnectionId);
				onlinelist.Add(Context.ConnectionId);
				await CacheHelper.SetAsync(cacheKey + Context.ConnectionId, user.UserId);
				await CacheHelper.SetAsync(cacheKey + user.UserId, list);
				await CacheHelper.SetAsync(cacheKey + "list_" + user.CompanyId, onlinelist);
			}
		}

		/// <summary>
		/// 发送消息
		/// </summary>
		/// <param name="reUserId">收消息的人员Id</param>
		/// <param name="message">消息内容</param>
		/// <returns></returns>
		public async Task SendMessage(string reUserId, string message)
		{
			if (string.IsNullOrEmpty(reUserId))
			{
				return;
			}
			else
			{
				MessageEntity msg = new MessageEntity();
				msg.F_EnabledMark = true;
				msg.F_MessageType = 1;
				msg.F_CreatorUserName = _service.currentuser.UserName;
				msg.F_MessageInfo = message;
				msg.F_ToUserId = reUserId;
				msg.F_ClickRead = true;
				await _msgService.SubmitForm(msg);
			}
		}

		public override async Task OnDisconnectedAsync(Exception exception)
		{
			var user = _service.currentuser;
			//删除缓存连接
			var userId = await CacheHelper.GetAsync<string>(cacheKey + Context.ConnectionId);
			if (!string.IsNullOrEmpty(userId))
			{
				//将用户信息存进缓存
				var list = await CacheHelper.GetAsync<List<string>>(cacheKey + userId);
				//登录计数
				var onlinelist = await CacheHelper.GetAsync<List<string>>(cacheKey + "list_" + user.CompanyId);
				if (list != null)
				{
					list.Remove(Context.ConnectionId);
					if (list.Count == 0)
					{
						await CacheHelper.RemoveAsync(cacheKey + userId);
					}
					else
					{
						await CacheHelper.SetAsync(cacheKey + userId, list);
					}
				}
				if (onlinelist != null)
				{
					onlinelist.Remove(Context.ConnectionId);
					if (list.Count == 0)
					{
						await CacheHelper.RemoveAsync(cacheKey + "list_" + user.CompanyId);
					}
					else
					{
						await CacheHelper.SetAsync(cacheKey + "list_" + user.CompanyId, onlinelist);
					}
				}
				await CacheHelper.RemoveAsync(cacheKey + Context.ConnectionId);
			}
			await base.OnDisconnectedAsync(exception);
		}
	}
}