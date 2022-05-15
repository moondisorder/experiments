if txtBox{
	draw_sprite_stretched(spr_nineslice,0,xpos,ypos,width,height)
	draw_set_color(c_black)
	draw_set_font(fnt1)
	draw_text(xpos+10,ypos,o_bed.myTxt[o_bed.curr])
}
draw_self();
