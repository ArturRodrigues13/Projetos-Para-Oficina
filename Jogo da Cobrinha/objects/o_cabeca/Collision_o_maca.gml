instance_destroy(other);

incremento += 1;

var _inst = noone;

switch dir {
	
	case "baixo":
	
		_inst = instance_create_layer(x,y - metade * incremento,"Instances",o_corpo);
		break;
	
	case "cima":
		
		_inst = instance_create_layer(x,y + metade * incremento,"Instances",o_corpo);
		break;
		
	case "esquerda":
		
		_inst = instance_create_layer(x + metade * incremento,y,"Instances",o_corpo);
		break;
		
	case "direita":
	
		_inst = instance_create_layer(x - metade * incremento,y ,"Instances",o_corpo);
		break;
}

_inst.dir = dir;
_inst.seguindo = next_seguir;

if(incremento == 1) {

	primeiro_corpo = _inst;
}

next_seguir = _inst;