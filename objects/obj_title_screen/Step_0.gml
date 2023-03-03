/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_space) {
	switch img {
		case 0: sprite_index = iris_; break
		case 1: sprite_index = colorful_iris1; break
		case 2: sprite_index = colorful_iris2; break
		case 3: sprite_index = colorful_iris3; break
		case 4: sprite_index = colorful_iris4; break
		case 5: sprite_index = colorful_iris5; break
		case 6: sprite_index = colorful_iris6; break
		case 7: sprite_index = colorful_iris7; break
		case 8: sprite_index = iris_; break
	}
	img += 1
	if (img == 8 and keyboard_check_pressed(vk_space)) {
		img = 0;
		
	}
}