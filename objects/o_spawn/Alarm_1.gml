xy1 = randomPlacement(sprite_width,sprite_height)
instance_create_depth(xy1[0],xy1[1],-3000,o_bubble_red)
if global.score>=100{
	if alarm[2]<=0{
		alarm[2]=30;
	}
}
