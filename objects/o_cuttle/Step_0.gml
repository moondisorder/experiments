if keyboard_check(vk_right){
	sprite_index=spr_cuttle_right
x+=dist
}

if keyboard_check(vk_left){
	sprite_index=spr_cuttle_left
x-=dist
}

if keyboard_check(vk_up){
y-=dist
sprite_index=spr_cuttle_up
}

if keyboard_check(vk_down){
y+=dist
sprite_index=spr_cuttle_down;
}

//with collectible, add the points to the score and destroy
var inst = instance_nearest(x,y,o_collectibles)
if place_meeting(x,y,inst){
	global.Score+=inst.pnts;
	instance_create_depth(x,y,global.sparkleDepth,o_sparkle)
	with inst{
		instance_destroy();
	}
	
}




