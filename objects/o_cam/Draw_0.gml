draw_set_font(fnt1);
draw_set_color(c_black);
//draw_text(getViewX()+64,getViewY(),"Shells found:"+string(global.Shells))
draw_text(getViewX(),getViewY(),"Score:"+string(global.Score));


draw_set_font(fnt1);
draw_set_color(c_red);
if global.gameOver{
 draw_text(getViewX(),getViewY(),"game_over");
}

for (i = 0; i < global.shellCount ; i++;){
show_debug_message("Draw shell")
	var shell = draw_sprite(spr_shell,0,getViewX()+xx,getViewY());
		//xx+=32;
	
}
