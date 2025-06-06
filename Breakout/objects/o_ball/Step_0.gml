if (place_meeting(x, y + vspeed, o_barra)) {
	
	while (!place_meeting(x, y + sign(vspeed), o_barra)) y += sign(vspeed);
	   
	vspeed = -vspeed;
	var offset = x - (o_barra.x);
	hspeed = hspeed + (offset / 16);
	hspeed = clamp(hspeed, -10, 10);

}

if (place_meeting(x, y + vspeed, o_blocks)) {
	
	while (!place_meeting(x, y + sign(vspeed), o_blocks)) y += sign(vspeed);
	  
	//var _inst_h = instance_place(x + ((sprite_width / 2) * sign(hspeed)),y,o_blocks);
	//var _inst_v = instance_place(x,y + ((sprite_height / 2) * sign(vspeed)),o_blocks);
	
	var _inst_h = instance_place(x + hspeed, y, o_blocks);
	var _inst_v = instance_place(x, y + vspeed, o_blocks);
	var _tocou = false;
	
	if( _inst_h != noone) {
		
		instance_destroy(_inst_h);
		hspeed *= -1;
		_tocou = true;
	}
	
	if (_inst_v != noone && !_tocou) {
		
		instance_destroy(_inst_v);
		vspeed *= -1;
	}
}


if(noPlayer) {
	
	x = o_barra.x;
	y = o_barra.y - 8;
	
	if(mouse_check_button_pressed(mb_left)) {
		
		noPlayer = false;
		hspeed = 0;
		vspeed = -3;
	}
}

if(y > room_height) game_restart()

if(y < 0) vspeed *= -1;

if(x > room_width || x < 0) {
	
	hspeed *= -1;
}

