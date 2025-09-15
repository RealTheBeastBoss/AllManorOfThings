// This File is all the Utility Functions

function endSplashScreen()
{
	audio_play_sound(soClubClementine, 3, true);
	with oGame {
		event_user(0); // Triggers User Event 0 in the Game Object
	}
}

function endCredits()
{
	oGame.next_room = TitleScreen;
	with oGame {
		event_user(0);
	}
}