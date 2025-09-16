if current_x != mouse_x and mouse_x >= 725 and mouse_x <= 945 {
	current_x = mouse_x;
	var volume = 0.0;
	if current_x != 725 {
		volume = (current_x - 725) / 220;
	}
	switch title {
		case "Music":
			audio_group_set_gain(Music, volume, 0);
		break;
		case "SFX":
			audio_group_set_gain(SFX, volume, 0);
		break;
		case "Voice":
			audio_group_set_gain(Voice, volume, 0);
		break;
	}
	volume *= 100;
	display = string(round(volume)) + "%";
} else if mouse_x < 725 {
	current_x = 725;
	switch title {
		case "Music":
			audio_group_set_gain(Music, 0, 0);
		break;
		case "SFX":
			audio_group_set_gain(SFX, 0, 0);
		break;
		case "Voice":
			audio_group_set_gain(Voice, 0, 0);
		break;
	}
	display = "0%";
} else if mouse_x > 945 {
	current_x = 945;
	switch title {
		case "Music":
			audio_group_set_gain(Music,1, 0);
		break;
		case "SFX":
			audio_group_set_gain(SFX, 1, 0);
		break;
		case "Voice":
			audio_group_set_gain(Voice, 1, 0);
		break;
	}
	display = "100%";
}