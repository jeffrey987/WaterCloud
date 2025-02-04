﻿using Jaina;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.ComponentModel.DataAnnotations;
using System.Threading.Tasks;
using WaterCloud.Code;
using WaterCloud.Domain.SystemOrganize;
using WaterCloud.Domain.SystemSecurity;
using WaterCloud.Service.Event;
using WaterCloud.Service.SystemOrganize;
using WaterCloud.Service.SystemSecurity;

namespace WaterCloud.Web
{
    /// <summary>
    /// 用户接口
    /// </summary>
    [Route("api/[controller]/[action]")]
    [ApiExplorerSettings(GroupName = "Default")]
    [ApiController]
    public class UserController : ControllerBase
    {
        //自动注入服务
        public FilterIPService _filterIPService { get; set; }

        public UserService _userService { get; set; }
        public LogService _logService { get; set; }
        public SystemSetService _setService { get; set; }
        public IHttpContextAccessor _httpContextAccessor { get; set; }

        #region 提交数据

        /// <summary>
        /// 用户登录
        /// </summary>
        /// <param name="request">请求对象</param>
        /// <returns></returns>
        [HttpPost]
        public async Task<AlwaysResult> Login([FromBody] LoginRequest request)
        {
            var apitoken = Utils.GuId();
            if (!string.IsNullOrEmpty(OperatorProvider.Provider.GetToken()))
            {
                apitoken = OperatorProvider.Provider.GetToken();
            }

            LogEntity logEntity = new LogEntity();
            logEntity.F_ModuleName = "用户Api";
            logEntity.F_Type = DbLogType.Login.ToString();
            try
            {
                if (!await CheckIP())
                {
                    throw new Exception("IP受限");
                }
                UserEntity userEntity = await _userService.CheckLogin(request.userName, Md5.md5(request.password, 32), request.localurl);
                OperatorModel operatorModel = new OperatorModel();
                operatorModel.UserId = userEntity.F_Id;
                operatorModel.UserCode = userEntity.F_Account;
                operatorModel.UserName = userEntity.F_RealName;
                operatorModel.CompanyId = userEntity.F_CompanyId;
                operatorModel.OrganizeId = userEntity.F_OrganizeId;
                operatorModel.RoleId = userEntity.F_RoleId;
                operatorModel.LoginIPAddress = WebHelper.Ip;
                if (GlobalContext.SystemConfig.LocalLAN != false)
                {
                    operatorModel.LoginIPAddressName = "本地局域网";
                }
                else
                {
                    operatorModel.LoginIPAddressName = WebHelper.GetIpLocation(operatorModel.LoginIPAddress);
                }
                operatorModel.LoginTime = DateTime.Now;
                operatorModel.DdUserId = userEntity.F_DingTalkUserId;
                operatorModel.WxOpenId = userEntity.F_WxOpenId;
                operatorModel.IsAdmin = userEntity.F_IsAdmin.Value;
                operatorModel.IsBoss = userEntity.F_IsBoss.Value;
                operatorModel.IsSenior = userEntity.F_IsSenior.Value;
                SystemSetEntity setEntity = await _setService.GetForm(userEntity.F_CompanyId);
                operatorModel.DbNumber = setEntity.F_DbNumber;
                if (operatorModel.IsAdmin && operatorModel.DbNumber == GlobalContext.SystemConfig.MainDbNumber)
                {
                    operatorModel.IsSuperAdmin = true;
                }
                else
                {
                    operatorModel.IsSuperAdmin = false;
                }
                await OperatorProvider.Provider.AddLoginUser(operatorModel, apitoken, "api_");
                logEntity.F_Account = userEntity.F_Account;
                logEntity.F_NickName = userEntity.F_RealName;
                logEntity.F_Result = true;
                logEntity.F_Description = "登录成功";
                await GlobalContext.GetService<IEventPublisher>().PublishAsync(new BaseEventSource("Log:create", logEntity, operatorModel));

                // 设置刷新Token令牌
                _httpContextAccessor.HttpContext.Response.Headers[GlobalContext.SystemConfig.TokenName] = apitoken;
                return new AlwaysResult<string> { state = ResultType.success.ToString(), message = "登录成功。", data = apitoken };
            }
            catch (Exception ex)
            {
                logEntity.F_Account = request.userName;
                logEntity.F_NickName = request.userName;
                logEntity.F_Result = false;
                logEntity.F_Description = "登录失败，" + ex.Message;
                await GlobalContext.GetService<IEventPublisher>().PublishAsync(new BaseEventSource("Log:create", logEntity));
                return new AlwaysResult<string> { state = ResultType.error.ToString(), message = ex.Message, data = apitoken };
            }
        }

        private async Task<bool> CheckIP()
        {
            string ip = Request.HttpContext.Connection.LocalIpAddress.MapToIPv4().ToString();
            return await _filterIPService.CheckIP(ip);
        }

        /// <summary>
        /// 用户退出登录
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [LoginFilter]
        public async Task<AlwaysResult> LoginOff()
        {
            var logEntity = new LogEntity
            {
                F_ModuleName = "用户Api",
                F_Type = DbLogType.Exit.ToString(),
                F_Account = _userService.currentuser.UserCode,
                F_NickName = _userService.currentuser.UserName,
                F_Result = true,
                F_Description = "安全退出系统",
            };
            await GlobalContext.GetService<IEventPublisher>().PublishAsync(new BaseEventSource("Log:create", logEntity, _userService.currentuser));

            await OperatorProvider.Provider.EmptyCurrent("api_");
            return new AlwaysResult { state = ResultType.success.ToString() };
        }

        #endregion 提交数据

        #region 请求对象

        /// <summary>
        /// 登录请求对象
        /// </summary>
        public class LoginRequest
        {
            /// <summary>
            /// 用户名
            /// </summary>
            [Required(ErrorMessage = "用户名不能为空")]
            public string userName { get; set; }

            /// <summary>
            /// 密码
            /// </summary>
            [Required(ErrorMessage = "密码不能为空")]
            public string password { get; set; }

            /// <summary>
            /// 域名
            /// </summary>
            public string localurl { get; set; }
        }

        #endregion 请求对象
    }
}