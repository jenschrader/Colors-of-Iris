// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// func for showing prompt
function scr_show_prompt(_object, _x, _y){
	// make sure thing exists first
	if (instance_exists(_object)) {
		// if txtbox and prompt do not exist
		if (!instance_exists(obj_txtbox) and (!instance_exists(obj_prompt))) {
			// store instance id in var
			iii = instance_create_depth(_x, _y, -10000, obj_prompt);
			// return var 
			return iii;
		 }
		
	 }
	
 }
 
 // retrieve instance put in _prompt var
 function scr_prompt_destroy(_prompt, _reset){
	 //
	 if (_prompt != undefined) {
		 if (instance_exists(_prompt)) {
			 with (_prompt) {
				fade = 2;
			}
		 
			// reset prompt var
			if (instance_exists(obj_payer)) {
				with (obj_payer) {
					switch _reset {
						 // reset npc prompt
						case 0: npc_prompt = noone; break;
						case 1: object_prompt = noone; break;
					}
				 }
			 }
		 }
	 }
 }
 

 
		 