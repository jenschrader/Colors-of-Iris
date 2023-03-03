/// @description txtbox tst

var _txt;

// create txtbox if npc near by and player has control
if (near_npc and global.player_control == true) {
	_txt = near_npc.npc_txt;
	// if there isnt a txt box
	if (!instance_exists(obj_txtbox)) {
		// create txt box 
		iii = instance_create_depth((2000), (950), -10000, obj_txtbox);
		iii.txt_show = _txt;

	
	}

}

// create txtbox if near specific obj
if (near_obj and global.player_control == true) {
	_txt = near_obj.obj_txt;
	// if there isnt a txt box
	if (!instance_exists(obj_txtbox)) {
		// create it
		iii = instance_create_depth((2000), (950), -10000, obj_txtbox);
		iii.txt_show = _txt;
	
	}

}