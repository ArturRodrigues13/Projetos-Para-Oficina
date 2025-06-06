x = mouse_x;

if(place_meeting(x,y,o_poderzinho)) {
	
	instance_destroy(o_poderzinho);
	instance_create_layer(0,0,"Instances",o_ball);
}