﻿using System.Collections.Generic;
using WaterCloud.Code;
using WaterCloud.DataBase;

namespace WaterCloud.Domain.SystemManage
{
    /// <summary>
    /// 创 建：超级管理员
    /// 日 期：2024-07-19 19:42
    /// 描 述：流程种子
    /// </summary>
    public class FlowschemeSeedData : ISqlSugarEntitySeedData<FlowschemeEntity>
    {
        [IgnoreSeedDataUpdate]
        public IEnumerable<FlowschemeEntity> SeedData()
        {
            var data = "[\r\n    {\r\n        \"F_Id\": \"0f4924b8-22a6-4f28-958c-488265d0bcc1\",\r\n        \"F_SchemeCode\": \"1595465800213\",\r\n        \"F_SchemeName\": \"复杂表单流程\",\r\n        \"F_SchemeType\": null,\r\n        \"F_SchemeVersion\": null,\r\n        \"F_SchemeCanUser\": null,\r\n        \"F_SchemeContent\": \"{\\\"title\\\":\\\"newFlow_1\\\",\\\"nodes\\\":[{\\\"name\\\":\\\"node_1\\\",\\\"left\\\":358,\\\"top\\\":22,\\\"type\\\":\\\"start round mix\\\",\\\"id\\\":\\\"1595465816935\\\",\\\"width\\\":120,\\\"height\\\":30,\\\"alt\\\":true},{\\\"name\\\":\\\"第一级\\\",\\\"left\\\":360,\\\"top\\\":94,\\\"type\\\":\\\"node\\\",\\\"id\\\":\\\"1595465820221\\\",\\\"width\\\":120,\\\"height\\\":40,\\\"alt\\\":true,\\\"setInfo\\\":{\\\"NodeName\\\":\\\"第一级\\\",\\\"NodeCode\\\":\\\"1595465820221\\\",\\\"NodeRejectType\\\":\\\"0\\\",\\\"NodeDesignate\\\":\\\"ALL_USER\\\",\\\"NodeConfluenceType\\\":\\\"all\\\",\\\"ThirdPartyUrl\\\":\\\"\\\",\\\"CanWriteFormItemIds\\\":[1],\\\"NodeDesignateData\\\":{\\\"users\\\":[],\\\"roles\\\":[],\\\"orgs\\\":[],\\\"currentDepart\\\":false}}},{\\\"name\\\":\\\"第二级\\\",\\\"left\\\":383,\\\"top\\\":170,\\\"type\\\":\\\"node\\\",\\\"id\\\":\\\"1595465821942\\\",\\\"width\\\":120,\\\"height\\\":40,\\\"alt\\\":true,\\\"setInfo\\\":{\\\"NodeName\\\":\\\"第二级\\\",\\\"NodeCode\\\":\\\"1595465821942\\\",\\\"NodeRejectType\\\":\\\"0\\\",\\\"NodeDesignate\\\":\\\"ALL_USER\\\",\\\"NodeConfluenceType\\\":\\\"all\\\",\\\"ThirdPartyUrl\\\":\\\"\\\",\\\"NodeDesignateData\\\":{\\\"users\\\":[],\\\"roles\\\":[],\\\"orgs\\\":[]}}},{\\\"name\\\":\\\"node_4\\\",\\\"left\\\":420,\\\"top\\\":254,\\\"type\\\":\\\"end round\\\",\\\"id\\\":\\\"1595465823573\\\",\\\"width\\\":120,\\\"height\\\":30,\\\"alt\\\":true}],\\\"lines\\\":[{\\\"type\\\":\\\"sl\\\",\\\"from\\\":\\\"1595465816935\\\",\\\"to\\\":\\\"1595465820221\\\",\\\"id\\\":\\\"1595465828057\\\",\\\"name\\\":\\\"\\\",\\\"dash\\\":false},{\\\"type\\\":\\\"sl\\\",\\\"from\\\":\\\"1595465820221\\\",\\\"to\\\":\\\"1595465821942\\\",\\\"id\\\":\\\"1595465829568\\\",\\\"name\\\":\\\"\\\",\\\"dash\\\":false},{\\\"type\\\":\\\"sl\\\",\\\"from\\\":\\\"1595465821942\\\",\\\"to\\\":\\\"1595465823573\\\",\\\"id\\\":\\\"1595465830589\\\",\\\"name\\\":\\\"\\\",\\\"dash\\\":false}],\\\"areas\\\":[],\\\"initNum\\\":9}\",\r\n        \"F_FrmId\": \"8faff4e5-b729-44d2-ac26-e899a228f63d\",\r\n        \"F_FrmType\": \"1\",\r\n        \"F_AuthorizeType\": \"0\",\r\n        \"F_SortCode\": \"1\",\r\n        \"F_DeleteMark\": 0,\r\n        \"F_EnabledMark\": 1,\r\n        \"F_Description\": \"复杂表单流程\",\r\n        \"F_CreatorTime\": \"2020-07-23 08:58:31\",\r\n        \"F_CreatorUserId\": \"9f2ec079-7d0f-4fe2-90ab-8b09a8302aba\",\r\n        \"F_CreatorUserName\": \"超级管理员\",\r\n        \"F_LastModifyTime\": \"2023-01-13 02:12:46.2804198\",\r\n        \"F_LastModifyUserId\": \"9f2ec079-7d0f-4fe2-90ab-8b09a8302aba\",\r\n        \"F_LastModifyUserName\": null,\r\n        \"F_OrganizeId\": \"\",\r\n        \"F_DeleteTime\": null,\r\n        \"F_DeleteUserId\": null\r\n    },\r\n    {\r\n        \"F_Id\": \"08daf4be-a1da-470d-8eb8-46af2868a2ae\",\r\n        \"F_SchemeCode\": \"1673542852789\",\r\n        \"F_SchemeName\": \"动态表单\",\r\n        \"F_SchemeType\": null,\r\n        \"F_SchemeVersion\": null,\r\n        \"F_SchemeCanUser\": null,\r\n        \"F_SchemeContent\": \"{\\\"title\\\":\\\"newFlow_1\\\",\\\"nodes\\\":[{\\\"name\\\":\\\"开始_1\\\",\\\"left\\\":222,\\\"top\\\":45,\\\"type\\\":\\\"start round mix\\\",\\\"id\\\":\\\"1673542870291\\\",\\\"width\\\":120,\\\"height\\\":30,\\\"alt\\\":true},{\\\"name\\\":\\\"结束_2\\\",\\\"left\\\":271,\\\"top\\\":242,\\\"type\\\":\\\"end round\\\",\\\"id\\\":\\\"1673542871983\\\",\\\"width\\\":120,\\\"height\\\":30,\\\"alt\\\":true},{\\\"name\\\":\\\"任务节点_3\\\",\\\"left\\\":266,\\\"top\\\":136,\\\"type\\\":\\\"node\\\",\\\"id\\\":\\\"1673542873160\\\",\\\"width\\\":120,\\\"height\\\":40,\\\"alt\\\":true,\\\"setInfo\\\":{\\\"NodeName\\\":\\\"任务节点_3\\\",\\\"NodeCode\\\":\\\"1673542873160\\\",\\\"NodeRejectType\\\":\\\"1\\\",\\\"NodeDesignate\\\":\\\"ALL_USER\\\",\\\"NodeConfluenceType\\\":\\\"all\\\",\\\"ThirdPartyUrl\\\":\\\"\\\",\\\"CanWriteFormItemIds\\\":[0],\\\"NodeDesignateData\\\":{\\\"users\\\":[],\\\"roles\\\":[],\\\"orgs\\\":[],\\\"currentDepart\\\":false}}}],\\\"lines\\\":[{\\\"type\\\":\\\"sl\\\",\\\"from\\\":\\\"1673542870291\\\",\\\"to\\\":\\\"1673542873160\\\",\\\"id\\\":\\\"1673542875028\\\",\\\"name\\\":\\\"\\\",\\\"dash\\\":false},{\\\"type\\\":\\\"sl\\\",\\\"from\\\":\\\"1673542873160\\\",\\\"to\\\":\\\"1673542871983\\\",\\\"id\\\":\\\"1673542875923\\\",\\\"name\\\":\\\"\\\",\\\"dash\\\":false}],\\\"areas\\\":[],\\\"initNum\\\":6}\",\r\n        \"F_FrmId\": \"08d92a58-531c-43ec-8546-d359e0f81347\",\r\n        \"F_FrmType\": \"0\",\r\n        \"F_AuthorizeType\": \"0\",\r\n        \"F_SortCode\": \"1\",\r\n        \"F_DeleteMark\": 0,\r\n        \"F_EnabledMark\": 1,\r\n        \"F_Description\": \"\",\r\n        \"F_CreatorTime\": \"2023-01-13 01:01:22.2760356\",\r\n        \"F_CreatorUserId\": \"9f2ec079-7d0f-4fe2-90ab-8b09a8302aba\",\r\n        \"F_CreatorUserName\": \"超级管理员\",\r\n        \"F_LastModifyTime\": \"2023-01-13 10:33:42.7821575\",\r\n        \"F_LastModifyUserId\": \"9f2ec079-7d0f-4fe2-90ab-8b09a8302aba\",\r\n        \"F_LastModifyUserName\": null,\r\n        \"F_OrganizeId\": \"\",\r\n        \"F_DeleteTime\": null,\r\n        \"F_DeleteUserId\": null\r\n    }\r\n]";
            return data.ToObject<List<FlowschemeEntity>>();
        }
    }
}