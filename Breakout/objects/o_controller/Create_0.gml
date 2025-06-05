var _x = 0;
var _y = 32;
var _distx = 0;
var _disty = 0;
var _check = 0;

for(var i = 0; i < 192; i ++) {
	
	instance_create_layer(_x + _distx, _y + _disty,"Instances",o_blocks);
	_check ++;
	_distx += 16;
	
	if(_check > 31) {
		
		_check = 0;
		_distx = 0;
		_disty += 16;
	}
}