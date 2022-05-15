draw_set_font(fnt1)
draw_set_color(c_black)
draw_text(0,0,"Shells found:"+string(global.Shells))
draw_text(o_cuttle.x,o_cuttle.y-16,"Score:"+string(global.Score))


if gameOver{
	draw_text(0,0,"game_over")

}
