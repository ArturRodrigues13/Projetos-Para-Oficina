if(!moveu) {
	
	if(keyboard_check_pressed(vk_down) && dir != "cima") {
		
		moveu = true;
		dir = "baixo";
	}

	if(keyboard_check_pressed(vk_up) && dir != "baixo") {
		
		moveu = true;
		dir = "cima";
	}
	
	if(keyboard_check_pressed(vk_left) && dir != "direita") {
		
		moveu = true;
		dir = "esquerda";
	}

	if(keyboard_check_pressed(vk_right) && dir != "esquerda") {
		
		moveu = true;
		dir = "direita";
	}
}

if(moveu) {
	
	delay --;
	
	if(delay == 0) {
		
		delay = 10;
		moveu = false;
	}
}


switch dir {
	
	case "baixo":
	
		y += vel;
		break;
	
	case "cima":
		
		y -= vel;
		break;
		
	case "esquerda":
		
		x -= vel;
		break;
		
	case "direita":
	
		x += vel;
		break;
}


var _colisao = collision_point(x,y,o_corpo,true,false);

if(_colisao != noone) {

	if(_colisao.id != primeiro_corpo.id) {
	
		global.game_over = true;
	}
}