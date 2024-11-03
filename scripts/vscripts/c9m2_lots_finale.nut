//-----------------------------------------------------
//
//
//-----------------------------------------------------
Msg("Initiating c9m2_lots_finale script\n");

//-----------------------------------------------------
ERROR		<- -1
PANIC 		<- 0
TANK 		<- 1
DELAY 		<- 2
SCRIPTED 	<- 3
//-----------------------------------------------------

StageDelay <- 0
PreEscapeDelay <- 0
if ( Director.GetGameModeBase() == "coop" || Director.GetGameModeBase() == "realism" )
{
	StageDelay <- 5
	PreEscapeDelay <- 5
}
else if ( Director.GetGameModeBase() == "versus" )
{
	StageDelay <- 10
	PreEscapeDelay <- 15
}

DirectorOptions <-
{	
	A_CustomFinale_StageCount = 8
	
	A_CustomFinale1 		= PANIC
	A_CustomFinaleValue1 	= 2
	A_CustomFinale2 		= DELAY
	A_CustomFinaleValue2 	= StageDelay
	A_CustomFinale3 		= TANK
	A_CustomFinaleValue3 	= 1
	A_CustomFinale4 		= DELAY
	A_CustomFinaleValue4 	= StageDelay
	A_CustomFinale5 		= PANIC
	A_CustomFinaleValue5 	= 2
	A_CustomFinaleMusic5 	= "Event.FinaleWave4"
	A_CustomFinale6 		= DELAY
	A_CustomFinaleValue6 	= StageDelay
	A_CustomFinale7 		= TANK
	A_CustomFinaleValue7 	= 1
	A_CustomFinale8 		= DELAY
	A_CustomFinaleValue8 	= StageDelay
	A_CustomFinale9 		= PANIC
	A_CustomFinaleValue9 	= 2
	A_CustomFinaleMusic9 	= "Event.FinaleWave4"
	A_CustomFinale10 		= DELAY
	A_CustomFinaleValue10 	= StageDelay
	A_CustomFinale11 		= TANK
	A_CustomFinaleValue11 	= 2
	A_CustomFinaleMusic11    = "Event.TankMidpoint_Metal"
	A_CustomFinale12 		= DELAY
	A_CustomFinaleValue12 	= PreEscapeDelay
	
	TankLimit = 2
	WitchLimit = 0
	CommonLimit = 20
	HordeEscapeCommonLimit = 15
	EscapeSpawnTanks = false
	//SpecialRespawnInterval = 80
	
	MusicDynamicMobSpawnSize = 8
	MusicDynamicMobStopSize = 2
	MusicDynamicMobScanStopSize = 1
}

if ( Director.GetGameMode() == "hardtwentyeight" || Director.GetGameMode() == "realismhardtwentyeight" )
{
	DirectorOptions.A_CustomFinale_StageCount = 8;
    DirectorOptions.A_CustomFinaleValue8 = PreEscapeDelay;
	DirectorOptions.rawdelete("A_CustomFinale9");
	DirectorOptions.rawdelete("A_CustomFinaleValue9");
	DirectorOptions.rawdelete("A_CustomFinaleMusic9");
	DirectorOptions.rawdelete("A_CustomFinale10");
	DirectorOptions.rawdelete("A_CustomFinaleValue10");
	DirectorOptions.rawdelete("A_CustomFinale11");
	DirectorOptions.rawdelete("A_CustomFinaleValue11");
	DirectorOptions.rawdelete("A_CustomFinaleMusic11");
	DirectorOptions.rawdelete("A_CustomFinale12");
	DirectorOptions.rawdelete("A_CustomFinaleValue12");
}

function EnableEscapeTanks()
{
	printl( "Chase Tanks Enabled!" );
	
	MapScript.DirectorOptions.EscapeSpawnTanks <- true
}