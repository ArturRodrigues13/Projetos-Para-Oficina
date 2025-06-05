

if((dir == "direita" || dir == "esquerda") && (seguindo.dir == "baixo" || seguindo.dir == "cima")) {
	
	if(x == seguindo.x) {
		alinhou = true;
	}	
}

if((dir == "baixo" || dir == "cima") && (seguindo.dir == "direita" || seguindo.dir == "esquerda")) {
	
	if(y == seguindo.y) {
		alinhou = true;
	}	
}

if(alinhou) {
	
	dir = seguindo.dir;
	alinhou = false;
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