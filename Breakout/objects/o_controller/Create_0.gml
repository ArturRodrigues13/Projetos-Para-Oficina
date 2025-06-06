var _x = 0;
var _y = 32;
var _distx = 0;
var _disty = 0;
var _check = 0;
var _random = 0;

for(var i = 0; i < 192; i ++) {
	
	_random = irandom_range(1,15);
	var _inst = instance_create_layer(_x + _distx, _y + _disty,"Instances",o_blocks);
	if(_random == 10) _inst.sprite_index = spr_blocks_especial;
	_check ++;
	_distx += 16;
	
	if(_check > 31) {
		
		_check = 0;
		_distx = 0;
		_disty += 16;
	}
}

global.pontuacao = 0;