
//-----------------------------------------------------
local PANIC = 0
local TANK = 1
local DELAY = 2
//-----------------------------------------------------

// default finale patten - for reference only

/*
CustomFinale1 <- PANIC
CustomFinaleValue1 <- 2

CustomFinale2 <- DELAY
CustomFinaleValue2 <- 10

CustomFinale3 <- TANK
CustomFinaleValue3 <- 1

CustomFinale4 <- DELAY
CustomFinaleValue4 <- 10

CustomFinale5 <- PANIC
CustomFinaleValue5 <- 2

CustomFinale6 <- DELAY
CustomFinaleValue6 <- 10

CustomFinale7 <- TANK
CustomFinaleValue7 <- 1

CustomFinale8 <- DELAY
CustomFinaleValue8 <- 2
*/

DirectorOptions <-
{
	//-----------------------------------------------------

	// 3 waves of mobs in between tanks

	 A_CustomFinale_StageCount = 8
	 
	 A_CustomFinale1 = PANIC
	 A_CustomFinaleValue1 = 2
	 
	 A_CustomFinale2 = DELAY
	 A_CustomFinaleValue2 = 10
	 
	 A_CustomFinale3 = TANK
	 A_CustomFinaleValue3 = 1
	 
	 A_CustomFinale4 = DELAY
	 A_CustomFinaleValue4 = 10
	 
	 A_CustomFinale5 = PANIC
	 A_CustomFinaleValue5 = 2
	 A_CustomFinaleMusic5 = "Event.FinaleWave4"
	 
	 A_CustomFinale6 = DELAY
	 A_CustomFinaleValue6 = 10
	 
	 A_CustomFinale7 = TANK
	 A_CustomFinaleValue7 = 2
	 A_CustomFinaleMusic7 = "Event.TankMidpoint_Metal"
	 
	 A_CustomFinale8 = DELAY
	 A_CustomFinaleValue8 = 15
	 
	 
	HordeEscapeCommonLimit = 15
	CommonLimit = 20
	SpecialRespawnInterval = 80
	
	MusicDynamicMobSpawnSize = 8	
	MusicDynamicMobStopSize = 2	
	MusicDynamicMobScanStopSize = 1	

}

local difficulty = Convars.GetStr( "z_difficulty" ).tolower();
if ( difficulty == "easy" )
{
	printl("Easy Finale");
	printl("==========================");
	DirectorOptions.A_CustomFinaleValue7 <- 1;
}
else if ( difficulty == "normal" )
{
	printl("Normal Finale");
	printl("==========================");
	DirectorOptions.A_CustomFinaleValue7 <- 1;
}
else if ( difficulty == "hard" )
{
	printl("Advanced Finale");
	printl("==========================");
}
else if ( difficulty == "impossible" )
{
	printl("Expert Finale");
	printl("==========================");
}

if ( "DirectorOptions" in LocalScript && "ProhibitBosses" in LocalScript.DirectorOptions )
{
	delete LocalScript.DirectorOptions.ProhibitBosses
}

/*
*/