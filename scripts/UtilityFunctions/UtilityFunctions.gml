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

function saveSettings()
{
	var struct = {
		debug_time: oGame.debug_time,
		fullscreen: window_get_fullscreen(),
		skip_intro: oGame.skip_intro,
		music_vol: audio_group_get_gain(Music),
		sfx_vol: audio_group_get_gain(SFX),
		voice_vol: audio_group_get_gain(Voice)
	};
	var _string = json_stringify(struct);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "settings.tbb");
	buffer_delete(_buffer);
}

function loadSettings()
{
	if file_exists("settings.tbb") {
		var _buffer = buffer_load("settings.tbb");
		var _json = buffer_read(_buffer, buffer_string);
		var struct = json_parse(_json);
		oGame.debug_time = struct.debug_time;
		window_set_fullscreen(struct.fullscreen);
		oGame.skip_intro = struct.skip_intro;
		audio_group_set_gain(Music, struct.music_vol, 0);
		audio_group_set_gain(SFX, struct.sfx_vol, 0);
		audio_group_set_gain(Voice, struct.voice_vol, 0);
	} else {
		audio_group_set_gain(Music, 0.75, 0);
		audio_group_set_gain(SFX, 0.5, 0);
	}
}