/// @description begin game


// press enter to begin

if (room == title_screen) {
	if (global.game_start == false) {
		global.game_start = true;
		room_goto(rm_game_main);
	}
}
