﻿using System.Collections.Generic;
using WaterCloud.Code;
using WaterCloud.DataBase;

namespace WaterCloud.Domain.SystemManage
{
    /// <summary>
    /// 创 建：超级管理员
    /// 日 期：2024-07-19 19:42
    /// 描 述：数据权限种子
    /// </summary>
    public class AreaSeedData : ISqlSugarEntitySeedData<AreaEntity>
    {
        [IgnoreSeedDataUpdate]
        public IEnumerable<AreaEntity> SeedData()
        {
            return data.ToObject<List<AreaEntity>>();
        }
    }
}