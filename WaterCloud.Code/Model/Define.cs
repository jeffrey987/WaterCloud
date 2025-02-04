﻿namespace WaterCloud.Code
{
	public static class Define
	{
		public const string PROVIDER_COOKIE = "Cookie";
		public const string PROVIDER_SESSION = "Session";
		public const string PROVIDER_WEBAPI = "WebApi";

		public const string CACHEPROVIDER_REDIS = "Redis";
		public const string CACHEPROVIDER_MEMORY = "Memory";

		public const string DATAPRIVILEGE_LOGINUSER = "{loginUser}";  //数据权限配置中，当前登录用户的key
		public const string DATAPRIVILEGE_LOGINROLE = "{loginRole}";  //数据权限配置中，当前登录用户角色的key
		public const string DATAPRIVILEGE_LOGINORG = "{loginOrg}";  //数据权限配置中，当前登录用户部门的key
		public const string SQL_MORE = "MoreSql";//多库
		public const string SQL_TENANT = "TenantSql";//多租户
	}
}