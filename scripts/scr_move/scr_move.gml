//scr_move();
//horizontal 
with o_girl{
if (place_meeting(x+hspd,y,o_wall)){
	while (!place_meeting(x+sign(hspd)+1,y,o_wall)){
		x+=sign(hspd);
	}
	hspd=0;
}

x+=hspd
//vertical

if (place_meeting(x,y+vspd,o_wall)){
	while (!place_meeting(x,y+sign(vspd)+1,o_wall)){
		y+=sign(vspd);
	}
	vspd=0;
}

y+=vspd 
}
