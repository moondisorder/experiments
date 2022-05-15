if keyboard_check(vk_right){
	image_xscale=1;
	sprite_index=spr_cuttle_right
x+=dist
}

if keyboard_check(vk_left){
	image_xscale=-1;
	sprite_index=spr_cuttle_right
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






