
//-----------------------------------------------------
local PANIC = 0
local TANK = 1
local DELAY = 2
//-----------------------------------------------------

DirectorOptions <-
{
	//-----------------------------------------------------

	 A_CustomFinale_StageCount = 8
	 
	 A_CustomFinale1 = PANIC
	 A_CustomFinaleValue1 = 2
	 
	 A_CustomFinale2 = DELAY
	 A_CustomFinaleValue2 = 12
	 
	 A_CustomFinale3 = TANK
	 A_CustomFinaleValue3 = 1
	 
	 A_CustomFinale4 = DELAY
	 A_CustomFinaleValue4 = 12
	 
	 A_CustomFinale5 = PANIC
	 A_CustomFinaleValue5 = 2
	 A_CustomFinaleMusic5 = "Event.FinaleWave4"
	 
	 A_CustomFinale6 = DELAY
	 A_CustomFinaleValue6 = 15
	 
	 A_CustomFinale7 = TANK
	 A_CustomFinaleValue7 = 2
	 A_CustomFinaleMusic7 = "Event.TankMidpoint_Metal"

	 A_CustomFinale8 = DELAY
	 A_CustomFinaleValue8 = 10
	 
SpecialRespawnInterval = 55

	MusicDynamicMobSpawnSize = 8	
	MusicDynamicMobStopSize = 2	
	MusicDynamicMobScanStopSize = 1	
	
	//-----------------------------------------------------
}

local difficulty = Convars.GetStr( "z_difficulty" ).tolower();
if ( difficulty == "easy" )
{
	printl("Easy Finale");
	printl("==========================");
}
else if ( difficulty == "normal" )
{
	printl("Normal Finale");
	printl("==========================");
}
else if ( difficulty == "hard" )
{
	printl("Advanced Finale");
	printl("==========================");
	DirectorOptions.A_CustomFinaleValue3 <- 2;
}
else if ( difficulty == "impossible" )
{
	printl("Expert Finale");
	printl("==========================");
	DirectorOptions.A_CustomFinaleValue3 <- 2;
}
