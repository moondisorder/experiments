
//hspd= (keyboard_check(vk_right)-keyboard_check(vk_left)) *spd

//vspd = (keyboard_check(vk_down)-keyboard_check(vk_up))*spd


if keyboard_check(vk_left){
sprite_index=spr_girl_left
x-=dist
}

if keyboard_check(vk_right){
sprite_index=spr_girl_right
x+=dist
}

if keyboard_check(vk_up){
sprite_index=spr_girl_up
y-=dist
}

if keyboard_check(vk_down){
sprite_index=spr_girl_down
y+=dist
}

