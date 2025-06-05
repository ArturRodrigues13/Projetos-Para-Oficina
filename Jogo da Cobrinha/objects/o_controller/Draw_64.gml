draw_set_font(fnt_bonita);
draw_text(125,75,"Pontuação: " + string(global.pontuacao));

var _x = display_get_gui_width() / 2;
var _y = display_get_gui_height( ) / 2;
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if(desenhar) {
	
	draw_text_transformed(_x, _y,"APERTE R PRA REINICIAR",1,1,0);
}