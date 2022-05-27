if global.seirenLives!=0 {
	draw_set_color(c_white);
	draw_set_font(fnt1);
	draw_text(0,0,"Score: " + string(global.score));
	draw_text(80,0,"Lives: " + string(global.seirenLives));
}


if global.seirenLives=0{
	with o_seiren{
		instance_destroy();
		
	}
		
	draw_set_color(c_red);
	draw_set_font(fnt2)
	draw_text(room_width/2-100,room_height/2,"GAME OVER LOSER!");
	draw_text(room_width/2-50,room_height/2+32,"Press enter to play again");
	
}
