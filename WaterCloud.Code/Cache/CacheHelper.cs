using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace WaterCloud.Code
{
	public abstract class BaseHelper : RedisHelper<BaseHelper>
	{ }

	public abstract class HandleLogHelper : RedisHelper<HandleLogHelper>
	{ }

	public class CacheHelper
	{
		private static string cacheProvider = GlobalContext.SystemConfig.CacheProvider;

		/// <summary>
		/// 添加缓存
		/// </summary>
		/// <param name="key">缓存Key</param>
		/// <param name="value">缓存Value</param>
		/// <param name="expiresIn">缓存时长h</param>
		/// <param name="isSliding">是否滑动过期（如果在过期时间内有操作，则以当前时间点延长过期时间）</param>
		/// <returns></returns>
		public static async Task<bool> SetAsync(string key, object value, int expiresIn = -1, bool isSliding = true)
		{
			return await SetBySecondAsync(key, value, expiresIn * 3600, isSliding);
		}

		/// <summary>
		/// 添加缓存
		/// </summary>
		/// <param name="key">缓存Key</param>
		/// <param name="value">缓存Value</param>
		/// <param name="expiresIn">缓存时长秒</param>
		/// <param name="isSliding">是否滑动过期（如果在过期时间内有操作，则以当前时间点延长过期时间）</param>
		/// <returns></returns>
		public static async Task<bool> SetBySecondAsync(string key, object value, int expiresIn = -1, bool isSliding = true)
		{
			if (string.IsNullOrEmpty(key))
				throw new ArgumentNullException(nameof(key));
			if (value == null)
				throw new ArgumentNullException(nameof(value));
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					if (expiresIn > 0)
					{
						await BaseHelper.SetAsync(key, value, expiresIn);
					}
					else
					{
						await BaseHelper.SetAsync(key, value);
					}
					return await ExistsAsync(key);

				case Define.CACHEPROVIDER_MEMORY:
					if (expiresIn > 0)
					{
						MemoryCacheHelper.Set(key, value, TimeSpan.FromSeconds(expiresIn), isSliding);
					}
					else
					{
						MemoryCacheHelper.Set(key, value);
					}
					return await ExistsAsync(key);

				default:
					if (expiresIn > 0)
					{
						MemoryCacheHelper.Set(key, value, TimeSpan.FromSeconds(expiresIn), isSliding);
					}
					else
					{
						MemoryCacheHelper.Set(key, value);
					}
					return await ExistsAsync(key);
			}
		}

		/// <summary>
		/// 添加缓存
		/// </summary>
		/// <param name="key">缓存Key</param>
		/// <param name="value">缓存Value</param>
		/// <param name="expiresIn">缓存时长秒</param>
		/// <param name="isSliding">是否滑动过期（如果在过期时间内有操作，则以当前时间点延长过期时间）</param>
		/// <returns></returns>
		public static bool SetBySecond(string key, object value, int expiresIn = -1, bool isSliding = true)
		{
			if (string.IsNullOrEmpty(key))
				throw new ArgumentNullException(nameof(key));
			if (value == null)
				throw new ArgumentNullException(nameof(value));
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					if (expiresIn > 0)
					{
						BaseHelper.Set(key, value, expiresIn);
					}
					else
					{
						BaseHelper.Set(key, value);
					}
					return Exists(key);

				case Define.CACHEPROVIDER_MEMORY:
					if (expiresIn > 0)
					{
						MemoryCacheHelper.Set(key, value, TimeSpan.FromSeconds(expiresIn), isSliding);
					}
					else
					{
						MemoryCacheHelper.Set(key, value);
					}
					return Exists(key);

				default:
					if (expiresIn > 0)
					{
						MemoryCacheHelper.Set(key, value, TimeSpan.FromSeconds(expiresIn), isSliding);
					}
					else
					{
						MemoryCacheHelper.Set(key, value);
					}
					return Exists(key);
			}
		}

		/// <summary>
		/// 获取缓存
		/// </summary>
		/// <param name="key">缓存Key</param>
		/// <returns></returns>
		public static async Task<T> GetAsync<T>(string key)
		{
			if (string.IsNullOrEmpty(key))
				throw new ArgumentNullException(nameof(key));
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					return await BaseHelper.GetAsync<T>(key);

				case Define.CACHEPROVIDER_MEMORY:
					return MemoryCacheHelper.Get<T>(key);

				default:
					return MemoryCacheHelper.Get<T>(key);
			}
		}

		/// <summary>
		/// 获取缓存
		/// </summary>
		/// <param name="key">缓存Key</param>
		/// <returns></returns>
		public static T Get<T>(string key)
		{
			if (string.IsNullOrEmpty(key))
				throw new ArgumentNullException(nameof(key));
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					return BaseHelper.Get<T>(key);

				case Define.CACHEPROVIDER_MEMORY:
					return MemoryCacheHelper.Get<T>(key);

				default:
					return MemoryCacheHelper.Get<T>(key);
			}
		}

		/// <summary>
		/// 删除缓存
		/// </summary>
		/// <param name="key">缓存Key</param>
		/// <returns></returns>
		public static async Task RemoveAsync(string key)
		{
			if (string.IsNullOrEmpty(key))
				throw new ArgumentNullException(nameof(key));
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					await BaseHelper.DelAsync(key);
					break;

				case Define.CACHEPROVIDER_MEMORY:
					MemoryCacheHelper.Remove(key);
					break;
			}
		}

		/// <summary>
		/// 删除缓存
		/// </summary>
		/// <param name="key">缓存Key</param>
		/// <returns></returns>
		public static void Remove(string key)
		{
			if (string.IsNullOrEmpty(key))
				throw new ArgumentNullException(nameof(key));
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					BaseHelper.Del(key);
					break;

				case Define.CACHEPROVIDER_MEMORY:
					MemoryCacheHelper.Remove(key);
					break;
			}
		}

		/// <summary>
		/// 验证缓存项是否存在
		/// </summary>
		/// <param name="key">缓存Key</param>
		/// <returns></returns>
		public static async Task<bool> ExistsAsync(string key)
		{
			if (string.IsNullOrEmpty(key))
				throw new ArgumentNullException(nameof(key));
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					return await BaseHelper.ExistsAsync(key);

				case Define.CACHEPROVIDER_MEMORY:
					return MemoryCacheHelper.Exists(key);

				default:
					return MemoryCacheHelper.Exists(key);
			}
		}

		/// <summary>
		/// 验证缓存项是否存在
		/// </summary>
		/// <param name="key">缓存Key</param>
		/// <returns></returns>
		public static bool Exists(string key)
		{
			if (string.IsNullOrEmpty(key))
				throw new ArgumentNullException(nameof(key));
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					return BaseHelper.Exists(key);

				case Define.CACHEPROVIDER_MEMORY:
					return MemoryCacheHelper.Exists(key);

				default:
					return MemoryCacheHelper.Exists(key);
			}
		}

		/// <summary>
		/// 缓存续期
		/// </summary>
		/// <param name="key">缓存Key</param>
		/// <param name="hour">时间小时</param>
		/// <returns></returns>
		public static async Task ExpireAsync(string key, int hour)
		{
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					await BaseHelper.ExpireAtAsync(key, DateTime.Now.AddHours(hour));
					break;

				default:
					break;
			}
		}

		/// <summary>
		/// 缓存续期
		/// </summary>
		/// <param name="key">缓存Key</param>
		/// <param name="hour">时间小时</param>
		/// <returns></returns>
		public static void Expire(string key, int hour)
		{
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					BaseHelper.ExpireAt(key, DateTime.Now.AddHours(hour));
					break;

				default:
					break;
			}
		}

		/// <summary>
		/// 清空缓存
		/// </summary>
		/// <param name="key">缓存Key</param>
		/// <returns></returns>
		public static async Task FlushAllAsync()
		{
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					await BaseHelper.NodesServerManager.FlushDbAsync();
					break;

				case Define.CACHEPROVIDER_MEMORY:
					MemoryCacheHelper.RemoveCacheAll();
					break;

				default:
					MemoryCacheHelper.RemoveCacheAll();
					break;
			}
		}

		/// <summary>
		/// 清空缓存
		/// </summary>
		/// <param name="key">缓存Key</param>
		/// <returns></returns>
		public static void FlushAll1()
		{
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					BaseHelper.NodesServerManager.FlushDb();
					break;

				case Define.CACHEPROVIDER_MEMORY:
					MemoryCacheHelper.RemoveCacheAll();
					break;

				default:
					MemoryCacheHelper.RemoveCacheAll();
					break;
			}
		}

		/// <summary>
		/// 不存在就插入
		/// </summary>
		/// <param name="key">缓存Key</param>
		/// <param name="value">缓存Value</param>
		/// <param name="second">过期时间</param>
		/// <returns></returns>
		public static async Task<bool> SetNxAsync(string key, object value, int second = 10)
		{
			bool result = false;
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					result = await BaseHelper.SetNxAsync(key, value);
					await BaseHelper.ExpireAtAsync(key, DateTime.Now.AddSeconds(second));
					break;

				case Define.CACHEPROVIDER_MEMORY:
					if (MemoryCacheHelper.Exists(key))
					{
						result = false;
						MemoryCacheHelper.Get(key);
					}
					else
					{
						result = true;
						MemoryCacheHelper.Set(key, value, TimeSpan.FromSeconds(second), true);
					}
					break;

				default:
					if (MemoryCacheHelper.Exists(key))
					{
						result = false;
						MemoryCacheHelper.Get(key);
					}
					else
					{
						result = true;
						MemoryCacheHelper.Set(key, value, TimeSpan.FromSeconds(second), true);
					}
					break;
			}
			return result;
		}

		/// <summary>
		/// 不存在就插入
		/// </summary>
		/// <param name="key">缓存Key</param>
		/// <param name="value">缓存Value</param>
		/// <param name="second">过期时间</param>
		/// <returns></returns>
		public static bool SetNx(string key, object value, int second = 10)
		{
			bool result = false;
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					result = BaseHelper.SetNx(key, value);
					BaseHelper.ExpireAt(key, DateTime.Now.AddSeconds(second));
					break;

				case Define.CACHEPROVIDER_MEMORY:
					if (MemoryCacheHelper.Exists(key))
					{
						result = false;
						MemoryCacheHelper.Get(key);
					}
					else
					{
						result = true;
						MemoryCacheHelper.Set(key, value, TimeSpan.FromSeconds(second), true);
					}
					break;

				default:
					if (MemoryCacheHelper.Exists(key))
					{
						result = false;
						MemoryCacheHelper.Get(key);
					}
					else
					{
						result = true;
						MemoryCacheHelper.Set(key, value, TimeSpan.FromSeconds(second), true);
					}
					break;
			}
			return result;
		}

		public static async Task<IEnumerable<string>> GetAllKeyAsync<V>()
		{
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					return await BaseHelper.KeysAsync("SqlSugarDataCache.*");

				case Define.CACHEPROVIDER_MEMORY:
					return MemoryCacheHelper.GetCacheKeys();

				default:
					return MemoryCacheHelper.GetCacheKeys();
			}
		}

		public static IEnumerable<string> GetAllKey<V>()
		{
			switch (cacheProvider)
			{
				case Define.CACHEPROVIDER_REDIS:
					return BaseHelper.Keys("SqlSugarDataCache.*");

				case Define.CACHEPROVIDER_MEMORY:
					return MemoryCacheHelper.GetCacheKeys();

				default:
					return MemoryCacheHelper.GetCacheKeys();
			}
		}
	}
}