﻿using SqlSugar;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using WaterCloud.Code;
using WaterCloud.DataBase;
using WaterCloud.Domain.SystemManage;
using WaterCloud.Domain.SystemOrganize;

namespace WaterCloud.Service.SystemManage
{
	/// <summary>
	/// 创 建：超级管理员
	/// 日 期：2020-05-21 14:38
	/// 描 述：字段管理服务类
	/// </summary>
	public class ModuleFieldsService : BaseService<ModuleFieldsEntity>, IDenpendency
	{
		public ModuleFieldsService(ISqlSugarClient context) : base(context)
		{
		}

		#region 获取数据

		public async Task<List<ModuleFieldsEntity>> GetList(string keyword = "")
		{
			var query = repository.IQueryable();
			if (!string.IsNullOrEmpty(keyword))
			{
				//此处需修改
				query = query.Where(a => a.F_FullName.Contains(keyword) || a.F_EnCode.Contains(keyword));
			}
			return await query.Where(a => a.F_DeleteMark == false).OrderBy(a => a.F_Id, OrderByType.Desc).ToListAsync();
		}

		public async Task<List<ModuleFieldsEntity>> GetLookList(Pagination pagination, string moduleId, string keyword = "")
		{
			//获取数据权限
			var query = repository.IQueryable().Where(a => a.F_DeleteMark == false && a.F_ModuleId == moduleId);
			if (!string.IsNullOrEmpty(keyword))
			{
				query = query.Where(a => a.F_FullName.Contains(keyword) || a.F_EnCode.Contains(keyword));
			}
			query = GetDataPrivilege("a", "", query);
			return await query.ToPageListAsync(pagination);
		}

		public async Task<ModuleFieldsEntity> GetLookForm(string keyValue)
		{
			var data = await repository.FindEntity(keyValue);
			return GetFieldsFilterData(data);
		}

		public async Task<ModuleFieldsEntity> GetForm(string keyValue)
		{
			var data = await repository.FindEntity(keyValue);
			return data;
		}

		#endregion 获取数据

		#region 提交数据

		public async Task SubmitForm(ModuleFieldsEntity entity, string keyValue)
		{
			if (string.IsNullOrEmpty(keyValue))
			{
				entity.F_DeleteMark = false;
				entity.Create();
				await repository.Insert(entity);
			}
			else
			{
				entity.Modify(keyValue);
				await repository.Update(entity);
			}
		}

		public async Task DeleteForm(string keyValue)
		{
			await repository.Delete(a => a.F_Id == keyValue);
		}

		public async Task SubmitCloneFields(string moduleId, string ids)
		{
			string[] ArrayId = ids.Split(',');
			var data = await this.GetList();
			List<ModuleFieldsEntity> entitys = new List<ModuleFieldsEntity>();
			var module = await repository.Db.Queryable<ModuleEntity>().Where(a => a.F_Id == moduleId).FirstAsync();
			if (string.IsNullOrEmpty(module.F_UrlAddress) || module.F_Target != "iframe")
			{
				throw new Exception("框架页才能创建字段");
			}
			foreach (string item in ArrayId)
			{
				ModuleFieldsEntity moduleFieldsEntity = data.Find(a => a.F_Id == item);
				moduleFieldsEntity.Create();
				moduleFieldsEntity.F_ModuleId = moduleId;
				entitys.Add(moduleFieldsEntity);
			}
			await repository.Insert(entitys);
		}

		public async Task<List<ModuleFieldsEntity>> GetListByRole(string roleid)
		{
			var moduleList = repository.Db.Queryable<RoleAuthorizeEntity>().Where(a => a.F_ObjectId == roleid && a.F_ItemType == 3).Select(a => a.F_ItemId).ToList();
			var query = repository.IQueryable().Where(a => (moduleList.Contains(a.F_Id) || a.F_IsPublic == true) && a.F_DeleteMark == false && a.F_EnabledMark == true);
			return await query.OrderBy(a => a.F_CreatorTime, OrderByType.Desc).ToListAsync();
		}

		internal async Task<List<ModuleFieldsEntity>> GetListNew(string moduleId = "")
		{
			var query = repository.Db.Queryable<ModuleFieldsEntity, ModuleEntity>((a, b) => new JoinQueryInfos(
				JoinType.Inner, a.F_ModuleId == b.F_Id && b.F_EnabledMark == true
				))
			.Select((a, b) => new ModuleFieldsEntity
			{
				F_Id = a.F_Id,
				F_CreatorTime = a.F_CreatorTime,
				F_CreatorUserId = a.F_CreatorUserId,
				F_DeleteMark = a.F_DeleteMark,
				F_DeleteTime = a.F_DeleteTime,
				F_DeleteUserId = a.F_DeleteUserId,
				F_Description = a.F_Description,
				F_EnabledMark = a.F_EnabledMark,
				F_EnCode = a.F_EnCode,
				F_FullName = a.F_FullName,
				F_LastModifyTime = a.F_LastModifyTime,
				F_LastModifyUserId = a.F_LastModifyUserId,
				F_ModuleId = b.F_UrlAddress,
				F_IsPublic = a.F_IsPublic
			}).MergeTable();
			if (!string.IsNullOrEmpty(moduleId))
			{
				query = query.Where(a => a.F_ModuleId == moduleId);
			}
			return await query.OrderBy(a => a.F_CreatorTime, OrderByType.Desc).ToListAsync();
		}

		#endregion 提交数据
	}
}