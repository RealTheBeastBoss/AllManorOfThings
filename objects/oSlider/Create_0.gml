var volume = 0.0;
switch title {
	case "Music":
		y_location = 155;
		volume = audio_group_get_gain(Music);
		display = string(round(volume * 100)) + "%";
	break;
	case "SFX":
		y_location = 239;
		volume = audio_group_get_gain(SFX);
		display = string(round(volume * 100)) + "%";
	break;
	case "Voice":
		y_location = 323;
		volume = audio_group_get_gain(Voice);
		display = string(round(volume * 100)) + "%";
	break;
}

current_x = 725 + (volume * 220);