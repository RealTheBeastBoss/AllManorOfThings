switch (display_text) {
	case "Quit Game":
		game_end();
	break;
	case "Settings":
		oGame.next_room = SettingsMenu;
		with oGame {
			event_user(0);
		}
	break;
	case "Back to Main Menu":
		oGame.next_room = TitleScreen;
		with oGame {
			event_user(0);
		}
	break;
	case "View Credits":
		oGame.next_room = CreditsScreen;
		with oGame {
			event_user(0);
		}
	break;
	case "Play Game":
		oGame.next_room = GameSelect;
		with oGame {
			event_user(0);
		}
	break;
	case "New Game":
		if oGame.skip_intro {
			oGame.next_room = TitleScreen;
		} else {
			oGame.next_room = IntroScene;
		}
		with oGame {
			event_user(0);
		}
	break;
	case "General":
		if oGame.debug_time {
			layer_set_visible("Debug_On", true);
		} else {
			layer_set_visible("Debug_Off", true);
		}
		if window_get_fullscreen() {
			layer_set_visible("Fullscreen_On", true);
		} else {
			layer_set_visible("Fullscreen_Off", true);
		}
		if oGame.skip_intro {
			layer_set_visible("Skip_Yes", true);
		} else {
			layer_set_visible("Skip_No", true);
		}
		layer_set_visible("General_Assets", true);
		layer_set_visible("Audio_Assets", false);
		layer_set_visible("Controls_Assets", false);
		layer_set_visible("General_Instances", true);
		layer_set_visible("Audio_Instances", false);
		layer_set_visible("Controls_Instances", false);
		instance_deactivate_layer("Controls_Instances");
		instance_deactivate_layer("Audio_Instances");
		instance_activate_layer("General_Instances");
	break;
	case "Audio":
		layer_set_visible("Debug_On", false);
		layer_set_visible("Debug_Off", false);
		layer_set_visible("Fullscreen_On", false);
		layer_set_visible("Fullscreen_Off", false);
		layer_set_visible("Skip_Yes", false);
		layer_set_visible("Skip_No", false);
		layer_set_visible("General_Assets", false);
		layer_set_visible("Audio_Assets", true);
		layer_set_visible("Controls_Assets", false);
		layer_set_visible("General_Instances", false);
		layer_set_visible("Audio_Instances", true);
		layer_set_visible("Controls_Instances", false);
		instance_deactivate_layer("General_Instances");
		instance_deactivate_layer("Controls_Instances");
		instance_activate_layer("Audio_Instances");
	break;
	case "Controls":
		layer_set_visible("Debug_On", false);
		layer_set_visible("Debug_Off", false);
		layer_set_visible("Fullscreen_On", false);
		layer_set_visible("Fullscreen_Off", false);
		layer_set_visible("Skip_Yes", false);
		layer_set_visible("Skip_No", false);
		layer_set_visible("General_Assets", false);
		layer_set_visible("Audio_Assets", false);
		layer_set_visible("Controls_Assets", true);
		layer_set_visible("General_Instances", false);
		layer_set_visible("Audio_Instances", false);
		layer_set_visible("Controls_Instances", true);
		instance_deactivate_layer("General_Instances");
		instance_deactivate_layer("Audio_Instances");
		instance_activate_layer("Controls_Instances");
	break;
	case "Debug Mode":
		if oGame.debug_time {
			layer_set_visible("Debug_On", false);
			layer_set_visible("Debug_Off", true);
			oGame.debug_time = false;
		} else {
			layer_set_visible("Debug_On", true);
			layer_set_visible("Debug_Off", false);
			oGame.debug_time = true;
		}
	break;
	case "Fullscreen":
		if window_get_fullscreen() {
			layer_set_visible("Fullscreen_On", false);
			layer_set_visible("Fullscreen_Off", true);
			window_set_fullscreen(false);
		} else {
			layer_set_visible("Fullscreen_On", true);
			layer_set_visible("Fullscreen_Off", false);
			window_set_fullscreen(true);
		}
	break;
	case "Skip Intro":
		if oGame.skip_intro {
			layer_set_visible("Skip_Yes", false);
			layer_set_visible("Skip_No", true);
			oGame.skip_intro = false;
		} else {
			layer_set_visible("Skip_Yes", true);
			layer_set_visible("Skip_No", false);
			oGame.skip_intro = true;
		}
	break;
}