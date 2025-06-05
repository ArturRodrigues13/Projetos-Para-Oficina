
if (place_meeting(x, y + vspeed, o_barra)) {
	
	while (!place_meeting(x, y + sign(vspeed), o_barra)) y += sign(vspeed);
	   
	vspeed = -vspeed;
	var offset = x - (o_barra.x + o_barra.sprite_width / 2);
	hspeed = hspeed - (offset / 16);
	hspeed = clamp(hspeed, -10, 10);
	vspeed += sign(vspeed) / 2;
}

if(noPlayer) {
	
	show_debug_message(o_barra.x)
	show_debug_message(x)
	x = o_barra.x;
	y = o_barra.y - 8;
	
	if(keyboard_check_pressed(vk_space)) {
		
		noPlayer = false;
		hspeed = 0;
		vspeed = -2;
	}
}

if(y > room_height) game_restart()

if(y < 0) vspeed *= -1;

if(x > room_width || x < 0) {
	
	hspeed *= -1;
}