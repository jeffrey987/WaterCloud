﻿using System.Collections.Generic;

namespace WaterCloud.Domain
{
	public class InitEntity
	{
		public HomeInfoEntity homeInfo { get; set; }
		public LogoInfoEntity logoInfo { get; set; }
		public List<MenuInfoEntity> menuInfo { get; set; }
	}
}