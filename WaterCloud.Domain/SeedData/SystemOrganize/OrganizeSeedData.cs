﻿using System.Collections.Generic;
using WaterCloud.Code;
using WaterCloud.DataBase;

namespace WaterCloud.Domain.SystemOrganize
{
    /// <summary>
    /// 创 建：超级管理员
    /// 日 期：2024-07-19 19:42
    /// 描 述：组织种子
    /// </summary>
    public class OrganizeSeedData : ISqlSugarEntitySeedData<OrganizeEntity>
    {
        [IgnoreSeedDataUpdate]
        public IEnumerable<OrganizeEntity> SeedData()
        {
            var data = "[\r\n    {\r\n        \"F_Id\": \"253EDA1F-F158-4F3F-A778-B7E538E052A2\",\r\n        \"F_ParentId\": \"5AB270C0-5D33-4203-A54F-4552699FDA3C\",\r\n        \"F_Layers\": \"2\",\r\n        \"F_EnCode\": \"Manufacturing\",\r\n        \"F_FullName\": \"生产部\",\r\n        \"F_ShortName\": null,\r\n        \"F_CategoryId\": \"Department\",\r\n        \"F_ManagerId\": null,\r\n        \"F_TelePhone\": null,\r\n        \"F_MobilePhone\": null,\r\n        \"F_WeChat\": null,\r\n        \"F_Fax\": null,\r\n        \"F_Email\": null,\r\n        \"F_AreaId\": null,\r\n        \"F_Address\": null,\r\n        \"F_AllowEdit\": 0,\r\n        \"F_AllowDelete\": 0,\r\n        \"F_SortCode\": \"7\",\r\n        \"F_DeleteMark\": 0,\r\n        \"F_EnabledMark\": 1,\r\n        \"F_Description\": \"\",\r\n        \"F_CreatorTime\": \"2016-06-10 00:00:00\",\r\n        \"F_CreatorUserId\": null,\r\n        \"F_LastModifyTime\": \"2020-05-28 10:54:04\",\r\n        \"F_LastModifyUserId\": \"9f2ec079-7d0f-4fe2-90ab-8b09a8302aba\",\r\n        \"F_DeleteTime\": null,\r\n        \"F_DeleteUserId\": null\r\n    },\r\n    {\r\n        \"F_Id\": \"554C61CE-6AE0-44EB-B33D-A462BE7EB3E1\",\r\n        \"F_ParentId\": \"5AB270C0-5D33-4203-A54F-4552699FDA3C\",\r\n        \"F_Layers\": \"2\",\r\n        \"F_EnCode\": \"Ministry\",\r\n        \"F_FullName\": \"技术部\",\r\n        \"F_ShortName\": null,\r\n        \"F_CategoryId\": \"Department\",\r\n        \"F_ManagerId\": null,\r\n        \"F_TelePhone\": null,\r\n        \"F_MobilePhone\": null,\r\n        \"F_WeChat\": null,\r\n        \"F_Fax\": null,\r\n        \"F_Email\": null,\r\n        \"F_AreaId\": null,\r\n        \"F_Address\": null,\r\n        \"F_AllowEdit\": 0,\r\n        \"F_AllowDelete\": 0,\r\n        \"F_SortCode\": \"5\",\r\n        \"F_DeleteMark\": 0,\r\n        \"F_EnabledMark\": 1,\r\n        \"F_Description\": null,\r\n        \"F_CreatorTime\": \"2016-06-10 00:00:00\",\r\n        \"F_CreatorUserId\": null,\r\n        \"F_LastModifyTime\": null,\r\n        \"F_LastModifyUserId\": null,\r\n        \"F_DeleteTime\": null,\r\n        \"F_DeleteUserId\": null\r\n    },\r\n    {\r\n        \"F_Id\": \"5AB270C0-5D33-4203-A54F-4552699FDA3C\",\r\n        \"F_ParentId\": \"0\",\r\n        \"F_Layers\": \"1\",\r\n        \"F_EnCode\": \"Company\",\r\n        \"F_FullName\": \"上海东鞋贸易有限公司\",\r\n        \"F_ShortName\": null,\r\n        \"F_CategoryId\": \"Company\",\r\n        \"F_ManagerId\": \"郭总\",\r\n        \"F_TelePhone\": null,\r\n        \"F_MobilePhone\": null,\r\n        \"F_WeChat\": null,\r\n        \"F_Fax\": null,\r\n        \"F_Email\": null,\r\n        \"F_AreaId\": null,\r\n        \"F_Address\": \"上海市松江区\",\r\n        \"F_AllowEdit\": 0,\r\n        \"F_AllowDelete\": 0,\r\n        \"F_SortCode\": \"1\",\r\n        \"F_DeleteMark\": 0,\r\n        \"F_EnabledMark\": 1,\r\n        \"F_Description\": null,\r\n        \"F_CreatorTime\": \"2016-06-10 00:00:00\",\r\n        \"F_CreatorUserId\": null,\r\n        \"F_LastModifyTime\": null,\r\n        \"F_LastModifyUserId\": null,\r\n        \"F_DeleteTime\": null,\r\n        \"F_DeleteUserId\": null\r\n    },\r\n    {\r\n        \"F_Id\": \"5B417E2B-4B96-4F37-8BAA-10E5A812D05E\",\r\n        \"F_ParentId\": \"5AB270C0-5D33-4203-A54F-4552699FDA3C\",\r\n        \"F_Layers\": \"2\",\r\n        \"F_EnCode\": \"Market\",\r\n        \"F_FullName\": \"市场部\",\r\n        \"F_ShortName\": null,\r\n        \"F_CategoryId\": \"Department\",\r\n        \"F_ManagerId\": null,\r\n        \"F_TelePhone\": null,\r\n        \"F_MobilePhone\": null,\r\n        \"F_WeChat\": null,\r\n        \"F_Fax\": null,\r\n        \"F_Email\": null,\r\n        \"F_AreaId\": null,\r\n        \"F_Address\": null,\r\n        \"F_AllowEdit\": 0,\r\n        \"F_AllowDelete\": 0,\r\n        \"F_SortCode\": \"3\",\r\n        \"F_DeleteMark\": 0,\r\n        \"F_EnabledMark\": 1,\r\n        \"F_Description\": null,\r\n        \"F_CreatorTime\": \"2016-06-10 00:00:00\",\r\n        \"F_CreatorUserId\": null,\r\n        \"F_LastModifyTime\": null,\r\n        \"F_LastModifyUserId\": null,\r\n        \"F_DeleteTime\": null,\r\n        \"F_DeleteUserId\": null\r\n    },\r\n    {\r\n        \"F_Id\": \"80E10CD5-7591-40B8-A005-BCDE1B961E76\",\r\n        \"F_ParentId\": \"5AB270C0-5D33-4203-A54F-4552699FDA3C\",\r\n        \"F_Layers\": \"2\",\r\n        \"F_EnCode\": \"Administration\",\r\n        \"F_FullName\": \"行政部\",\r\n        \"F_ShortName\": null,\r\n        \"F_CategoryId\": \"Department\",\r\n        \"F_ManagerId\": null,\r\n        \"F_TelePhone\": null,\r\n        \"F_MobilePhone\": null,\r\n        \"F_WeChat\": null,\r\n        \"F_Fax\": null,\r\n        \"F_Email\": null,\r\n        \"F_AreaId\": null,\r\n        \"F_Address\": null,\r\n        \"F_AllowEdit\": 0,\r\n        \"F_AllowDelete\": 0,\r\n        \"F_SortCode\": \"2\",\r\n        \"F_DeleteMark\": 0,\r\n        \"F_EnabledMark\": 1,\r\n        \"F_Description\": null,\r\n        \"F_CreatorTime\": \"2016-06-10 00:00:00\",\r\n        \"F_CreatorUserId\": null,\r\n        \"F_LastModifyTime\": null,\r\n        \"F_LastModifyUserId\": null,\r\n        \"F_DeleteTime\": null,\r\n        \"F_DeleteUserId\": null\r\n    },\r\n    {\r\n        \"F_Id\": \"BD830AEF-0A2E-4228-ACF8-8843C39D41D8\",\r\n        \"F_ParentId\": \"5AB270C0-5D33-4203-A54F-4552699FDA3C\",\r\n        \"F_Layers\": \"2\",\r\n        \"F_EnCode\": \"Purchase\",\r\n        \"F_FullName\": \"采购部\",\r\n        \"F_ShortName\": null,\r\n        \"F_CategoryId\": \"Department\",\r\n        \"F_ManagerId\": null,\r\n        \"F_TelePhone\": null,\r\n        \"F_MobilePhone\": null,\r\n        \"F_WeChat\": null,\r\n        \"F_Fax\": null,\r\n        \"F_Email\": null,\r\n        \"F_AreaId\": null,\r\n        \"F_Address\": null,\r\n        \"F_AllowEdit\": 0,\r\n        \"F_AllowDelete\": 0,\r\n        \"F_SortCode\": \"6\",\r\n        \"F_DeleteMark\": 0,\r\n        \"F_EnabledMark\": 1,\r\n        \"F_Description\": null,\r\n        \"F_CreatorTime\": \"2016-06-10 00:00:00\",\r\n        \"F_CreatorUserId\": null,\r\n        \"F_LastModifyTime\": null,\r\n        \"F_LastModifyUserId\": null,\r\n        \"F_DeleteTime\": null,\r\n        \"F_DeleteUserId\": null\r\n    },\r\n    {\r\n        \"F_Id\": \"DFA2FB91-C909-44A3-9282-BF946102E1C9\",\r\n        \"F_ParentId\": \"5AB270C0-5D33-4203-A54F-4552699FDA3C\",\r\n        \"F_Layers\": \"2\",\r\n        \"F_EnCode\": \"HumanResourse\",\r\n        \"F_FullName\": \"人事部\",\r\n        \"F_ShortName\": null,\r\n        \"F_CategoryId\": \"Department\",\r\n        \"F_ManagerId\": null,\r\n        \"F_TelePhone\": null,\r\n        \"F_MobilePhone\": null,\r\n        \"F_WeChat\": null,\r\n        \"F_Fax\": null,\r\n        \"F_Email\": null,\r\n        \"F_AreaId\": null,\r\n        \"F_Address\": null,\r\n        \"F_AllowEdit\": 0,\r\n        \"F_AllowDelete\": 0,\r\n        \"F_SortCode\": \"8\",\r\n        \"F_DeleteMark\": 0,\r\n        \"F_EnabledMark\": 1,\r\n        \"F_Description\": null,\r\n        \"F_CreatorTime\": \"2016-06-10 00:00:00\",\r\n        \"F_CreatorUserId\": null,\r\n        \"F_LastModifyTime\": null,\r\n        \"F_LastModifyUserId\": null,\r\n        \"F_DeleteTime\": null,\r\n        \"F_DeleteUserId\": null\r\n    },\r\n    {\r\n        \"F_Id\": \"F02A66CA-3D8B-491B-8A17-C9ACA3E3B5DD\",\r\n        \"F_ParentId\": \"5AB270C0-5D33-4203-A54F-4552699FDA3C\",\r\n        \"F_Layers\": \"2\",\r\n        \"F_EnCode\": \"Financials\",\r\n        \"F_FullName\": \"财务部\",\r\n        \"F_ShortName\": null,\r\n        \"F_CategoryId\": \"Department\",\r\n        \"F_ManagerId\": null,\r\n        \"F_TelePhone\": null,\r\n        \"F_MobilePhone\": null,\r\n        \"F_WeChat\": null,\r\n        \"F_Fax\": null,\r\n        \"F_Email\": null,\r\n        \"F_AreaId\": null,\r\n        \"F_Address\": null,\r\n        \"F_AllowEdit\": 0,\r\n        \"F_AllowDelete\": 0,\r\n        \"F_SortCode\": \"4\",\r\n        \"F_DeleteMark\": 0,\r\n        \"F_EnabledMark\": 1,\r\n        \"F_Description\": null,\r\n        \"F_CreatorTime\": \"2016-06-10 00:00:00\",\r\n        \"F_CreatorUserId\": null,\r\n        \"F_LastModifyTime\": \"2020-05-12 12:29:01\",\r\n        \"F_LastModifyUserId\": \"9f2ec079-7d0f-4fe2-90ab-8b09a8302aba\",\r\n        \"F_DeleteTime\": null,\r\n        \"F_DeleteUserId\": null\r\n    }\r\n]";
            return data.ToObject<List<OrganizeEntity>>();
        }
    }
}