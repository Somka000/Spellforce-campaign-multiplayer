-- RTS Spawn:
-- p5 Wildlandpass

GlobalSpawnDuration = 150

--Monumentenclaim
OnPlatformOneTimeEvent
{
	UpdateInterval = 10,
	Conditions = 
	{
		ODER9
		{
		IsMonumentInUse {X = 303, Y = 303, Range = 0, UpdateInterval = 10},
		IsMonumentInUse {X = 160, Y = 326, Range = 0, UpdateInterval = 10},
		IsMonumentInUse {X = 254, Y = 195, Range = 0, UpdateInterval = 10},
		IsMonumentInUse {X = 178, Y = 317, Range = 0, UpdateInterval = 10},
		IsMonumentInUse {X = 222, Y = 348, Range = 0, UpdateInterval = 10},
		IsMonumentInUse {X = 260, Y = 256, Range = 0, UpdateInterval = 10},
		},
	},
	Actions =
	{
		SetGlobalTimeStamp{Name = "WildlandpassMonumentClaimedTimer"},
	}
}


--RTS SPAWN,  Erster Trupp im Lager hinter Flu�

RtsSpawnNT
{
	Clan = 27,
	MaxClanSize = 90,
	X = 401,
	Y = 210,
	Range = 3,
	
	
	Timer	= "WildlandpassMonumentClaimedTimer",-- name des globalen timers der bei einem bestimmten event gesetzt wird und das spawning ausl�st
	Init	= {876, 876, 881, 881, 876, 876, 881, 881, 876, 876, 881, 881}, 	-- Orks Spearmen/Veteran
	SpawnData =
	{
		[10]	= {Seconds = 36, 	Units = {876, 881}},	
		[30]	= {Seconds = 36, 	Units = {876}},	
		[45]	= {Seconds = 30, 	Units = {881}}, 	
		[50]	= {Seconds = 18, 	Units = {882, 876, 881}},
		[90]	= {Seconds = 10, 	Units = {876, 881}},
	},
	NpcBuildingsExist = {X = 402, Y = 214, Range = 8},
}

--RTS SPAWN,  Zweiter Trupp im Lager hinter Flu�

RtsSpawnNT
{
	Clan = 26,
	MaxClanSize = 60,
	X = 403,
	Y = 199,
	Range = 3,
	
	
	Timer	= "WildlandpassMonumentClaimedTimer",-- name des globalen timers der bei einem bestimmten event gesetzt wird und das spawning ausl�st
	Init	= {876, 876, 881, 881, 876, 876, 881, 881, 876, 876, 881, 881}, 	-- Orks Spearmen/Veteran
	SpawnData =
	{
		[10]	= {Seconds = 36, 	Units = {876, 881}},	
		[35]	= {Seconds = 36, 	Units = {876}},	
		[40]	= {Seconds = 30, 	Units = {881}}, 	
		[45]	= {Seconds = 18, 	Units = {882, 876, 881}},
		[70]	= {Seconds = 10, 	Units = {876, 881}},
	},
	NpcBuildingsExist = {X = 400, Y = 196, Range = 6},
}


----RTS SPAWN,  dritter Trupp im Lager hinter Flu�
-- Erst mal Raus, weil da kein Platz mehr f�r ist im Camp
--RtsSpawnNT
--{
--	Clan = 25,
--	MaxClanSize = 10,
--	X = 417,
--	Y = 226,
--	Range = 3,
--	
--	
--	Timer	= "WildlandpassMonumentClaimedTimer",-- name des globalen timers der bei einem bestimmten event gesetzt wird und das spawning ausl�st
--	Init	= {876, 876, 881}, 	-- Orks Spearmen/Veteran
--	SpawnData =
--	{
--		[0]		= {Minutes = 10, 	Units = {876, 881}},	
--	},
--	NpcBuildingsExist = {X = 417, Y = 225, Range = 6},
--}
--
--RTS SPAWN,  vierter Trupp im Lager hinter Flu�

RtsSpawnNT
{
	Clan = 24,
	MaxClanSize = 30,
	X = 414,
	Y = 211,
	Range = 3,
	
	
	Timer	= "WildlandpassMonumentClaimedTimer",-- name des globalen timers der bei einem bestimmten event gesetzt wird und das spawning ausl�st
	Init	= {876, 876, 881, 876, 876, 881, 882, 882, 876, 876, 881, 876, 876, 881, 882, 882, 876, 876, 881, 876, 876, 881, 882, 882}, 	-- Orks Spearmen/Veteran
	SpawnData =
	{
		[0]		= {Minutes = 3, 	Units = {876, 881}},	
	},
	NpcBuildingsExist = {X = 421, Y = 207, Range = 6},
}


--RTS SPAWN, Suedliche Blockade

RtsSpawnNT
{
	Clan = 23,
	MaxClanSize = 36,
	X = 161,
	Y = 191	,
	Range = 3,
	
	
	Timer	= "WildlandpassMonumentClaimedTimer",-- name des globalen timers der bei einem bestimmten event gesetzt wird und das spawning ausl�st
	Init	= {852, 852, 852, 852, 743, 743, 851, 851, 852, 852, 852, 852, 743, 743, 851, 851, 852, 852, 852, 852, 743, 743, 851, 851}, 	-- Orks Spearmen/Veteran
	SpawnData =                                                                     
	{                                                                               
		[0]		= {Seconds = 36, 	Units = {852, 852, 852, 852, 743, 743, 851, 851}},	
	},                                                                              
	NpcBuildingsExist = {X = 161, Y = 183, Range = 10},
}

-- Camp am Monument

RtsSpawnNT
{
	Clan = 22,
	MaxClanSize = 60,
	X = 189,
	Y = 292,
	Range = 1,
	
	
	Timer	= "WildlandpassMonumentClaimedTimer",-- name des globalen timers der bei einem bestimmten event gesetzt wird und das spawning ausl�st
	Init	= {852, 743, 851, 852, 743, 851, 852, 743, 851}, 	-- Briganten Schwert/Scharfsch�tze/Keule
	SpawnData =
	{
		[0]		= {Minutes = 1.2, 	Units = {852, 852, 852, 852, 743, 743, 851, 851}},
		[30]	= {Seconds = 36, 	Units = {852}},	                                  
		[45]	= {Seconds = 30, 	Units = {851}}, 	                              
		[60]	= {Seconds = 18, 	Units = {852, 743, 851}},                         
		[90]	= {Seconds = 10, 	Units = {852, 851}},	                          
	},
	NpcBuildingsExist = {X = 189, Y = 291, Range = 10},
}




--Camp Sueden1

RtsSpawnNT
{
	Clan = 21,
	MaxClanSize = 105,
	X = 188,
	Y = 195,
	Range = 1,
	
	
	Timer	= "WildlandpassMonumentClaimedTimer",-- name des globalen timers der bei einem bestimmten event gesetzt wird und das spawning ausl�st
	Init	= {852, 852, 852, 852, 743, 743, 851, 851, 852, 852, 852, 852, 743, 743, 851, 851, 852, 852, 852, 852, 743, 743, 851, 851}, 	-- Briganten Schwert/Scharfsch�tze/Keule
	SpawnData =
	{
		[15]	= {Seconds = 36, 	Units = {852, 852, 852, 852, 743, 743, 851, 851}},
		[30]	= {Seconds = 36, 	Units = {852}},	
		[45]	= {Seconds = 30, 	Units = {851}}, 	
		[70]	= {Seconds = 18, 	Units = {852, 743, 851}},
		[100]	= {Seconds = 10, 	Units = {852, 851}},	
	},
	NpcBuildingsExist = {X = 188, Y = 188, Range = 3},
}





-- Erstes Nordcamp

RtsSpawnNT
{
	Clan = 20,
	MaxClanSize = 45,
	X = 400,
	Y = 294,
	Range = 1,
	
	
	Timer	= "WildlandpassMonumentClaimedTimer",-- name des globalen timers der bei einem bestimmten event gesetzt wird und das spawning ausl�st
	Init	= {876, 876, 876, 881, 881, 876, 876, 876, 881, 881, 876, 876, 876, 881, 881}, 	-- Orks Spearmen/Veteran
	SpawnData =
	{
		[10]	= {Seconds = 48, 	Units = {876, 881}},	  
		[32]	= {Seconds = 36, 	Units = {876}},	          
		[43]	= {Seconds = 30, 	Units = {881}}, 	      
		[57]	= {Seconds = 24, 	Units = {882, 876, 881}}, 
		[90]	= {Seconds = 10, 	Units = {876, 881}},      
	},
	NpcBuildingsExist = {X = 400, Y = 294, Range = 7},
}

--Zweites Nordcamp


RtsSpawnNT
{
	Clan = 19,
	MaxClanSize = 75,
	X = 396,
	Y = 310,
	Range = 1,
	
	
	Timer	= "WildlandpassMonumentClaimedTimer",-- name des globalen timers der bei einem bestimmten event gesetzt wird und das spawning ausl�st
	Init	= {876, 876, 876, 881, 881, 876, 876, 876, 881, 881, 876, 876, 876, 881, 881}, 	-- Orks Spearmen/Veteran
	SpawnData =
	{
		[5]		= {Seconds = 48, 	Units = {876, 881}},	  
		[25]	= {Seconds = 36, 	Units = {876}},	          
		[41]	= {Seconds = 30, 	Units = {881}}, 	      
		[49]	= {Seconds = 24, 	Units = {882, 876, 881}}, 
		[92]	= {Seconds = 10, 	Units = {876, 881}},      
	},
	NpcBuildingsExist = {X = 396, Y = 310, Range = 6},
}

-- drittes Nordcamp

RtsSpawnNT
{
	Clan = 18,
	MaxClanSize = 75,
	X = 374,
	Y = 308,
	Range = 1,
	
	
	Timer	= "WildlandpassMonumentClaimedTimer",-- name des globalen timers der bei einem bestimmten event gesetzt wird und das spawning ausl�st
	Init	= {876, 876, 876, 881, 881, 876, 876, 876, 881, 881, 876, 876, 876, 881, 881}, 	-- Orks Spearmen/Veteran
	SpawnData =
	{
		[23]	= {Seconds = 48, 	Units = {876, 881}},	  
		[46]	= {Seconds = 36, 	Units = {876}},	          
		[51]	= {Seconds = 30, 	Units = {881}}, 	      
		[69]	= {Seconds = 24, 	Units = {882, 876, 881}}, 
		[89]	= {Seconds = 10, 	Units = {876, 881}},      
	},
	NpcBuildingsExist = {X = 368, Y = 311, Range = 4},
}

-- Resourcenblocker bei den Menschenresourcen

RtsSpawnNT
{
	Clan = 17,
	MaxClanSize = 30,
	X = 277,
	Y = 220,
	Range = 1,
	
	
	Timer	= "WildlandpassMonumentClaimedTimer",-- name des globalen timers der bei einem bestimmten event gesetzt wird und das spawning ausl�st
	Init	= {876, 876, 876, 881, 881, 876, 876, 876, 881, 881, 876, 876, 876, 881, 881}, 	-- Orks Spearmen/Veteran
	SpawnData =
	{
		[0]	= {Seconds = 48, 	Units = {876, 881}},	  
	},
	NpcBuildingsExist = {X = 277, Y = 217, Range = 10},
}



---------------------------------------------------
--
--	Postpesistentes Spawnen
--
---------------------------------------------------
Spinnen1 =
{
	X = 137,
	Y = 193,
	Range = 1,
	Chief = 2825,	-- Giant Spider White 8 Normal
	WaitTime = 15,
	AvatarMinLevel = 0,
	AvatarMaxLevel = 0,
	Conditions = 
	{
	},
	Units = 
	{
		202, 202, 202, 202, 202, 202,	-- Spider Giant Black 7 Lesser
		751, 751, 751, 751, 751, 751, 751, 751, 751, 751		-- Spider Tiny Black 2
	},                   
	ShuffleUnits = TRUE,
}

InitSpawn
{
	Clan = 16, 
	Groups = {Spinnen1},
	Conditions = {},
}

RtsSpawn
{
	Clan = 16, MaxClanSize = 30,
	Groups = {Spinnen1},
	Conditions = 	
	{
	},
}

Spinnen2 =
{
	X = 258,
	Y = 202,
	Range = 1,
	Chief = 2826,	-- Giant Spider Brown 8 Normal
	WaitTime = 30,
	AvatarMinLevel = 0,
	AvatarMaxLevel = 0,
	Conditions = 
	{
	},
	Units = 
	{
		200, 200, 200,	-- Spider Giant Brown Lesser 4 
		202, 202, 202,	-- Spider Giant Black 7 Lesser
		751, 751, 751, 751, 751, 751, 751, 751, 751, 751		-- Spider Tiny Black 2
	},                   
	ShuffleUnits = TRUE,
}

InitSpawn
{
	Clan = 15, 
	Groups = {Spinnen2},
	Conditions = {},
}

RtsSpawn
{
	Clan = 15, MaxClanSize = 30,
	Groups = {Spinnen2},
	Conditions = 	
	{
	},
}

Spinnen3 =
{
	X = 390,
	Y = 188,
	Range = 1,
	Chief = 2826,	-- Giant Spider Brown 8 Normal
	WaitTime = 40,
	AvatarMinLevel = 0,
	AvatarMaxLevel = 0,
	Conditions = 
	{
	},
	Units = 
	{
		752, 752, 752, 752, 752, 752, 752, 752, 752, 752		-- Spider Tiny Green 2
	},                   
	ShuffleUnits = FALSE,
}

InitSpawn
{
	Clan = 14, 
	Groups = {Spinnen3},
	Conditions = {},
}

RtsSpawn
{
	Clan = 14, MaxClanSize = 12,
	Groups = {Spinnen3},
	Conditions = 	
	{
	},
}


