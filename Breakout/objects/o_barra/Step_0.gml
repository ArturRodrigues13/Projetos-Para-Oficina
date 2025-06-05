vel = 0;


if (x >= 0 + sprite_height / 2) if(keyboard_check(vk_left)) {
	
	vel = -spd;
}

if (x < room_width - sprite_height / 2) if(keyboard_check(vk_right)) {
	
	vel = spd;
}

x += vel;