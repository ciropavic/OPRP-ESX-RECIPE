Config                            = {}

Config.DrawDistance               = 10.0 -- How close do you need to be for the markers to be drawn (in GTA units).
Config.MarkerType                 = {Cloakrooms = 20, Armories = 21, BossActions = 22, Vehicles = 36, Helicopters = 34}
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagement     = true -- Enable if you want society managing.
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = true -- Enable if you're using esx_identity.
Config.EnableESXOptionalneeds     = false -- Enable if you're using esx_optionalneeds
Config.EnableLicenses             = true -- Enable if you're using esx_license.

Config.EnableHandcuffTimer        = true -- Enable handcuff timer? will unrestrain player after the time ends.
Config.HandcuffTimer              = 10 * 60000 -- 10 minutes.

Config.EnableJobBlip              = true -- Enable blips for cops on duty, requires esx_society.
Config.EnableCustomPeds           = false -- Enable custom peds in cloak room? See Config.CustomPeds below to customize peds.

Config.EnableESXService           = true -- Enable esx service?
Config.MaxInService               = -1 -- How many people can be in service at once? Set as -1 to have no limit

Config.Locale                     = 'en'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(425.1, -979.5, 30.7),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(452.6, -992.8, 30.6)
		},

		Armories = {
			vector3(451.7, -980.1, 30.6)
		},

		Vehicles = {
			{
				Spawner = vector3(454.6, -1017.4, 28.4),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{coords = vector3(438.4, -1018.3, 27.7), heading = 90.0, radius = 6.0},
					{coords = vector3(441.0, -1024.2, 28.3), heading = 90.0, radius = 6.0},
					{coords = vector3(453.5, -1022.2, 28.0), heading = 90.0, radius = 6.0},
					{coords = vector3(450.9, -1016.5, 28.1), heading = 90.0, radius = 6.0}
				}
			},

			{
				Spawner = vector3(473.3, -1018.8, 28.0),
				InsideShop = vector3(228.5, -993.5, -99.0),
				SpawnPoints = {
					{coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0},
					{coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0}
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, 43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0}
				}
			}
		},

		BossActions = {
			vector3(448.4, -973.2, 30.6)
		}

	}

}

Config.AuthorizedWeapons = {
	tps_constable = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 5},
		{weapon = 'WEAPON_NIGHTSTICK', price = 5},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 10},
		{weapon = 'WEAPON_VINTAGEPISTOL', price = 10},
		{weapon = 'WEAPON_STUNGUN', price = 25},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 50}
	},
	prp_constable = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 5},
		{weapon = 'WEAPON_NIGHTSTICK', price = 5},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 10},
		{weapon = 'WEAPON_VINTAGEPISTOL', price = 10},
		{weapon = 'WEAPON_STUNGUN', price = 25},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 50}
	},
	opp_constable = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 5},
		{weapon = 'WEAPON_NIGHTSTICK', price = 5},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 10},
		{weapon = 'WEAPON_VINTAGEPISTOL', price = 10},
		{weapon = 'WEAPON_STUNGUN', price = 25},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 50}
	},
	rcmp_constable = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 5},
		{weapon = 'WEAPON_NIGHTSTICK', price = 5},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 10},
		{weapon = 'WEAPON_VINTAGEPISTOL', price = 10},
		{weapon = 'WEAPON_STUNGUN', price = 25},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 50}
	},

	tps_supervisor = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 5},
		{weapon = 'WEAPON_NIGHTSTICK', price = 5},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 10},
		{weapon = 'WEAPON_VINTAGEPISTOL', price = 10},
		{weapon = 'WEAPON_STUNGUN', price = 25},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 50},
		{weapon = 'WEAPON_PUMPSHOTGUN_MK2', price = 30},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 30},
		{weapon = 'WEAPON_CARBINERIFLE', price = 30}
	},
	prp_supervisor = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 5},
		{weapon = 'WEAPON_NIGHTSTICK', price = 5},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 10},
		{weapon = 'WEAPON_VINTAGEPISTOL', price = 10},
		{weapon = 'WEAPON_STUNGUN', price = 25},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 50},
		{weapon = 'WEAPON_PUMPSHOTGUN_MK2', price = 30},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 30},
		{weapon = 'WEAPON_CARBINERIFLE', price = 30}
	},
	opp_supervisor = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 5},
		{weapon = 'WEAPON_NIGHTSTICK', price = 5},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 10},
		{weapon = 'WEAPON_VINTAGEPISTOL', price = 10},
		{weapon = 'WEAPON_STUNGUN', price = 25},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 50},
		{weapon = 'WEAPON_PUMPSHOTGUN_MK2', price = 30},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 30},
		{weapon = 'WEAPON_CARBINERIFLE', price = 30}
	},
	rcmp_supervisor = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 5},
		{weapon = 'WEAPON_NIGHTSTICK', price = 5},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 10},
		{weapon = 'WEAPON_VINTAGEPISTOL', price = 10},
		{weapon = 'WEAPON_STUNGUN', price = 25},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 50},
		{weapon = 'WEAPON_PUMPSHOTGUN_MK2', price = 30},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 30},
		{weapon = 'WEAPON_CARBINERIFLE', price = 30}
	},
	
	tps_coc = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 5},
		{weapon = 'WEAPON_NIGHTSTICK', price = 5},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 10},
		{weapon = 'WEAPON_VINTAGEPISTOL', price = 10},
		{weapon = 'WEAPON_STUNGUN', price = 25},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 50},
		{weapon = 'WEAPON_PUMPSHOTGUN_MK2', price = 30},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 30},
		{weapon = 'WEAPON_CARBINERIFLE', price = 30}
	},
	prp_coc = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 5},
		{weapon = 'WEAPON_NIGHTSTICK', price = 5},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 10},
		{weapon = 'WEAPON_VINTAGEPISTOL', price = 10},
		{weapon = 'WEAPON_STUNGUN', price = 25},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 50},
		{weapon = 'WEAPON_PUMPSHOTGUN_MK2', price = 30},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 30},
		{weapon = 'WEAPON_CARBINERIFLE', price = 30}
	},
	opp_coc = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 5},
		{weapon = 'WEAPON_NIGHTSTICK', price = 5},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 10},
		{weapon = 'WEAPON_VINTAGEPISTOL', price = 10},
		{weapon = 'WEAPON_STUNGUN', price = 25},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 50},
		{weapon = 'WEAPON_PUMPSHOTGUN_MK2', price = 30},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 30},
		{weapon = 'WEAPON_CARBINERIFLE', price = 30}
	},
	rcmp_coc = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 5},
		{weapon = 'WEAPON_NIGHTSTICK', price = 5},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 10},
		{weapon = 'WEAPON_VINTAGEPISTOL', price = 10},
		{weapon = 'WEAPON_STUNGUN', price = 25},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 50},
		{weapon = 'WEAPON_PUMPSHOTGUN_MK2', price = 30},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 30},
		{weapon = 'WEAPON_CARBINERIFLE', price = 30}
	}
}

Config.AuthorizedVehicles = {
	car = {
		tps_constable = {},
		prp_constable = {},
		opp_constable = {
			{model = 'oppfordcrownvic', price = 7000},
			{model = 'oppfordexplorer', price = 9000},
			{model = 'oppdodgecharger', price = 13000},
			{model = 'oppfordtaurus', price = 13000},
			{model = 'oppchevytahoe', price = 15000},
			{model = 'oppchevysilv', price = 15000}
		},
		rcmp_constable = {
			{model = 'rcmpcrownvic', price = 7000},
			{model = 'rcmpfordexplor', price = 9000},
			{model = 'rcmpdodgecharger', price = 13000},
			{model = 'rcmpfordtaurus', price = 13000},
			{model = 'rcmpchevytahoe', price = 15000},
			{model = 'rcmpchevysilv', price = 15000}
		},

		tps_supervisor = {},
		prp_supervisor = {},
		opp_supervisor = {			
			{model = 'oppfordcrownvic', price = 7000},
			{model = 'oppfordexplorer', price = 9000},
			{model = 'oppdodgecharger', price = 13000},
			{model = 'oppfordtaurus', price = 13000},
			{model = 'oppchevytahoe', price = 15000},
			{model = 'oppchevysilv', price = 15000}
		},
		rcmp_supervisor = {
			{model = 'rcmpcrownvic', price = 7000},
			{model = 'rcmpfordexplor', price = 9000},
			{model = 'rcmpdodgecharger', price = 13000},
			{model = 'rcmpfordtaurus', price = 13000},
			{model = 'rcmpchevytahoe', price = 15000},
			{model = 'rcmpchevysilv', price = 15000}
		},

		tps_coc = {},
		prp_coc = {},
		opp_coc = {
			{model = 'oppfordcrownvic', price = 7000},
			{model = 'oppfordexplorer', price = 9000},
			{model = 'oppdodgecharger', price = 13000},
			{model = 'oppfordtaurus', price = 13000},
			{model = 'oppchevytahoe', price = 15000},
			{model = 'oppchevysilv', price = 15000}
		},
		rcmp_coc = {
			{model = 'rcmpcrownvic', price = 7000},
			{model = 'rcmpfordexplor', price = 9000},
			{model = 'rcmpdodgecharger', price = 13000},
			{model = 'rcmpfordtaurus', price = 13000},
			{model = 'rcmpchevytahoe', price = 15000},
			{model = 'rcmpchevysilv', price = 15000}
		}
	},

	helicopter = {
		tps_constable = {},
		prp_constable = {},
		opp_constable = {},
		rcmp_constable = {},

		tps_supervisor = {},
		prp_supervisor = {},
		opp_supervisor = {},
		rcmp_supervisor = {},

		tps_coc = {},
		prp_coc = {},
		opp_coc = {},
		rcmp_coc = {}
	}
}

Config.CustomPeds = {
	shared = {
		--{label = 'Sheriff Ped', maleModel = 's_m_y_sheriff_01', femaleModel = 's_f_y_sheriff_01'},
	},

	recruit = {},

	officer = {},

	sergeant = {},

	lieutenant = {},

	boss = {}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Config.Uniforms = {
	-- Constable & Supervisor TPS
	-- BEGIN
		tps_constable_short = {
			male = {
				tshirt_1 = 190,  tshirt_2 = 12,
				torso_1 = 44,   torso_2 = 0,
				arms = 0,
				pants_1 = 49,   pants_2 = 3,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = 10,  helmet_2 = 2,
				chain_1 = 2,    chain_2 = 0,
				bproof_1 = 1,  bproof_2 = 1
			},
			female = {
				arms = 14,
				pants_1 = 51,   pants_2 = 1,
				shoes_1 = 29,   shoes_2 = 0,
				chain_1 = 8,    chain_2 = 0,
				tshirt_1 = 3,  tshirt_2 = 0,
				bproof_1 = 3,  bproof_2 = 1,
				torso_1 = 88,   torso_2 = 1,
				helmet_1 = 10,  helmet_2 = 1
			}
		},
		tps_constable_long = {
			male = {
				arms = 1,
				pants_1 = 49,   pants_2 = 3,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 1,  bproof_2 = 1,
				torso_1 = 200,   torso_2 = 4,
				helmet_1 = 10,  helmet_2 = 2
			},
			female = {
				arms = 7,
				pants_1 = 51,   pants_2 = 1,
				shoes_1 = 29,   shoes_2 = 0,
				chain_1 = 8,    chain_2 = 0,
				tshirt_1 = 3,  tshirt_2 = 0,
				bproof_1 = 3,  bproof_2 = 1,
				torso_1 = 88,   torso_2 = 1,
				helmet_1 = 10,  helmet_2 = 1
			}
		},
		tps_constable_winter = {
			male = {
				arms = 1,
				pants_1 = 49,   pants_2 = 3,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 1,  bproof_2 = 1,
				torso_1 = 154,   torso_2 = 1,
				helmet_1 = 120,  helmet_2 = 0
			},
			female = {}
		},
		tps_supervisor_short = {
			male = {
				tshirt_1 = 190,  tshirt_2 = 12,
				torso_1 = 44,   torso_2 = 0,
				arms = 0,
				pants_1 = 49,   pants_2 = 3,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = 10,  helmet_2 = 2,
				chain_1 = 2,    chain_2 = 0,
				bproof_1 = 1,  bproof_2 = 1
			},
			female = {
				arms = 14,
				pants_1 = 51,   pants_2 = 1,
				shoes_1 = 29,   shoes_2 = 0,
				chain_1 = 8,    chain_2 = 0,
				tshirt_1 = 3,  tshirt_2 = 0,
				bproof_1 = 3,  bproof_2 = 1,
				torso_1 = 88,   torso_2 = 1,
				helmet_1 = 10,  helmet_2 = 1
			}
		},
		tps_supervisor_long = {
			male = {
				arms = 1,
				pants_1 = 49,   pants_2 = 3,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 1,  bproof_2 = 1,
				torso_1 = 200,   torso_2 = 4,
				helmet_1 = 10,  helmet_2 = 2
			},
			female = {
				arms = 7,
				pants_1 = 51,   pants_2 = 1,
				shoes_1 = 29,   shoes_2 = 0,
				chain_1 = 8,    chain_2 = 0,
				tshirt_1 = 3,  tshirt_2 = 0,
				bproof_1 = 3,  bproof_2 = 1,
				torso_1 = 88,   torso_2 = 1,
				helmet_1 = 10,  helmet_2 = 1
			}
		},
		tps_supervisor_winter = {
			male = {
				arms = 1,
				pants_1 = 49,   pants_2 = 3,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 1,  bproof_2 = 1,
				torso_1 = 154,   torso_2 = 1,
				helmet_1 = 120,  helmet_2 = 0
			},
			female = {}
		},
	-- Constable & Supervisor TPS
	-- END


	-- Constable & Supervisor OPP
	-- BEGIN
		opp_constable_short = {
			male = {
				arms = 0,
				pants_1 = 49,   pants_2 = 2,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 16,  bproof_2 = 2,
				torso_1 = 190,   torso_2 = 13,
				helmet_1 = 10,  helmet_2 = 3
			},
			female = {}
		},
		opp_constable_long = {
			male = {
				arms = 1,
				pants_1 = 49,   pants_2 = 2,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 16,  bproof_2 = 2,
				torso_1 = 200,   torso_2 = 3,
				helmet_1 = 10,  helmet_2 = 3
			},
			female = {}
		},
		opp_constable_winter = {
			male = {
				arms = 1,
				pants_1 = 49,   pants_2 = 3,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 16,  bproof_2 = 1,
				torso_1 = 154,   torso_2 = 2,
				helmet_1 = 120,  helmet_2 = 0
			},
			female = {}
		},
		opp_supervisor_short = {
			male = {
				arms = 0,
				pants_1 = 49,   pants_2 = 2,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 16,  bproof_2 = 2,
				torso_1 = 190,   torso_2 = 13,
				helmet_1 = 10,  helmet_2 = 3
			},
			female = {}
		},
		opp_supervisor_long = {
			male = {
				arms = 1,
				pants_1 = 49,   pants_2 = 2,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 16,  bproof_2 = 2,
				torso_1 = 200,   torso_2 = 3,
				helmet_1 = 10,  helmet_2 = 3
			},
			female = {}
		},
		opp_supervisor_winter = {
			male = {
				arms = 1,
				pants_1 = 49,   pants_2 = 3,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 16,  bproof_2 = 1,
				torso_1 = 154,   torso_2 = 2,
				helmet_1 = 120,  helmet_2 = 0
			},
			female = {}
		},
	-- Constable & Supervisor OPP
	-- END


	-- Constable & Supervisor RCMP
	-- BEGIN
		rcmp_constable_short = {
			male = {
				arms = 0,
				pants_1 = 49,   pants_2 = 1,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 16,  bproof_2 = 3,
				torso_1 = 190,   torso_2 = 1,
				helmet_1 = 10,  helmet_2 = 1
			},
			female = {}
		},
		rcmp_constable_long = {
			male = {
				arms = 1,
				pants_1 = 49,   pants_2 = 2,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 16,  bproof_2 = 3,
				torso_1 = 193,   torso_2 = 1,
				helmet_1 = 10,  helmet_2 = 1
			},
			female = {}
		},
		rcmp_constable_winter = {
			male = {
				arms = 1,
				pants_1 = 49,   pants_2 = 1,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 16,  bproof_2 = 3,
				torso_1 = 154,   torso_2 = 3,
				helmet_1 = 120,  helmet_2 = 0
			},
			female = {}
		},
		rcmp_supervisor_short = {
			male = {
				arms = 0,
				pants_1 = 49,   pants_2 = 1,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 16,  bproof_2 = 3,
				torso_1 = 190,   torso_2 = 1,
				helmet_1 = 10,  helmet_2 = 1
			},
			female = {}
		},
		rcmp_supervisor_long = {
			male = {
				arms = 1,
				pants_1 = 49,   pants_2 = 2,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 16,  bproof_2 = 3,
				torso_1 = 193,   torso_2 = 1,
				helmet_1 = 10,  helmet_2 = 1
			},
			female = {}
		},
		rcmp_supervisor_winter = {
			male = {
				arms = 1,
				pants_1 = 49,   pants_2 = 1,
				shoes_1 = 25,   shoes_2 = 0,
				chain_1 = 2,    chain_2 = 0,
				tshirt_1 = 44,  tshirt_2 = 0,
				bproof_1 = 16,  bproof_2 = 3,
				torso_1 = 154,   torso_2 = 3,
				helmet_1 = 120,  helmet_2 = 0
			},
			female = {}
		},
	-- Constable & Supervisor RCMP
	-- END

	-- COC OPP & TPS
	-- BEGIN
	tps_coc = {
		male = {
			arms = 1,
			pants_1 = 49,   pants_2 = 3,
			shoes_1 = 25,   shoes_2 = 0,
			chain_1 = 2,    chain_2 = 0,
			tshirt_1 = 44,  tshirt_2 = 0,
			bproof_1 = 1,  bproof_2 = 1,
			torso_1 = 200,   torso_2 = 1,
			helmet_1 = 10,  helmet_2 = 2
		},
		female = {}
	},
	opp_coc = {
		male = {
			arms = 0,
			pants_1 = 49,   pants_2 = 1,
			shoes_1 = 25,   shoes_2 = 0,
			chain_1 = 2,    chain_2 = 0,
			tshirt_1 = 44,  tshirt_2 = 0,
			bproof_1 = 16,  bproof_2 = 3,
			torso_1 = 190,   torso_2 = 1,
			helmet_1 = 10,  helmet_2 = 1
		},
		female = {}
	},
	-- COC OPP & TPS
	-- END


	bullet_wear = {
		male = {
			bproof_1 = 11,  bproof_2 = 1
		},
		female = {
			bproof_1 = 13,  bproof_2 = 1
		}
	},

	gloves_short = {
		male = {
			arms = 41
		},
		female = {
			arms = 57
		}
	},

	gloves_long = {
		male = {
			arms = 42
		},
		female = {
			arms = 49
		}
	},

	no_gloves_short = {
		male = {
			arms = 0
		},
		female = {
			arms = 14
		}
	},

	no_gloves_long = {
		male = {
			arms = 1
		},
		female = {
			arms = 7
		}
	}
}
