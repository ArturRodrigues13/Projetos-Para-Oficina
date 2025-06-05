if(!instance_exists(o_maca)) {
	
	var _x = random_range(32, room_width - 32);
	var _y = random_range(32, room_height - 32);
	instance_create_layer(_x,_y,"Instances",o_maca);
}

if(global.game_over) {
	
	desenhar = true
	instance_destroy(o_cabeca);
	instance_destroy(o_corpo);
	
	if(keyboard_check_pressed(ord("R"))) {
		
		global.game_over = false;
		room_restart();
	}
}