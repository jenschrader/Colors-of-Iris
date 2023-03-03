/// @description: player movement


// check keys for movement if player has control
if (global.player_control == true) {
	move_right = keyboard_check(vk_right);
	move_left = keyboard_check(vk_left);
	move_up = keyboard_check(vk_up);
	move_down = keyboard_check(vk_down);
}
if (global.player_control == false) {
	// if player doesnt have control,no movement 
	move_right = 0;
	move_left = 0;
	move_up = 0;
	move_down = 0;	
}	
	
// movement calculations

// x movement
VX = ((move_right - move_left) * walk_speed);

// y movement
VY = ((move_down - move_up) * walk_speed);

// no movement: idle code block
if (VX == 0 and VY == 0) {
	// animations for idle and dir 
	switch dir {
		case 0: sprite_index = spr_player_idle_right; break
		case 1: sprite_index = spr_player_idle_up; break
		case 2: sprite_index = spr_player_idle_left; break
		case 3: sprite_index = spr_player_idle_down; break
	}
}

// moving
if (VX != 0 or VY != 0) {
	// check for x collision
	if (!collision_point(x + VX,
	y, obj_par_environment,
	true,
	true) and !collision_point(x + VX, y,
	obj_parent_npc,
	true,
	true) and !collision_point(x +VX, y,
	obj_par_interact,
	true,
	true)){
	// move x + 16px
		x += VX;
	}
	
	// check for y collision
	if (!collision_point(x, y + VY,
	obj_par_environment,
	true,
	true) and !collision_point(x, y + VY,
	obj_parent_npc,
	true,
	true) and !collision_point(x, y + VY,
	obj_par_interact,
	true,
	true)) {
		y += VY;
	}
	
}
	
	

	
	// animations
if VX > 0 {
	sprite_index = spr_player_walk_right;
	// direction right
	dir = 0;
	}
	if VX < 0 {
		sprite_index = spr_player_walk_left;
		// direction left
		dir = 2;
	}
	if VY > 0 {
		sprite_index = spr_player_walk_down;
		// direction down
		dir = 3
	}
	if VY < 0 {
		sprite_index = spr_player_walk_up;
		// direction up
		dir = 1;
	}




// check for collision w npc
near_npc = collision_rectangle(x-look_range, y-look_range, x+look_range, y+look_range, obj_parent_npc, false, true);
// if near npc do
if near_npc {
	//
	// debug check
	// show_debug_message("near npc");
	
	// pop up prompt
	if (npc_prompt == noone or npc_prompt == undefined) {
		npc_prompt = scr_show_prompt(near_npc, near_npc.x, near_npc.y - 150);
	
	}
}
// if not near npc do
if !near_npc {
	//
	// debug check
	show_debug_message("not near npc");
	// destroy prompt
	scr_prompt_destroy(npc_prompt, 0);
}


// check for collision w obj
near_obj = collision_rectangle(x-look_range, y-look_range, x+look_range, y+look_range, obj_par_interact, false, true);
if (near_obj) {
	//
	// debug check
	// show_debug_message("near obj");
	
	// pop up prompt
	if (object_prompt == noone or object_prompt == undefined) {
		object_prompt = scr_show_prompt(near_obj, near_obj.x, near_obj.y - 100);
	
	}
}
// if not near obj do
if !near_obj {
	//
	// debug check
	show_debug_message("not near obj");
	// destroy prompt
	scr_prompt_destroy(object_prompt, 1);
}

// changes depth 
depth =- y;







