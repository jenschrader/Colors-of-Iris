/// @description npc anim

// random loop timing
// if image is animated
if (image_speed > 0) {
	// if last frame 
	if (image_index == image_number) {
		// stop anim
		image_speed = 0;
		// set image loop to random alarm
		alarm[0] = irandom_range(loop_range01, loop_range02);
	}
}


// depth sorting
depth =-y;
