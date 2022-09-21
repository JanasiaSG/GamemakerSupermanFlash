/// @description Insert description here
// You can write your code in this editor
if !got_hit{
	if collision_circle(x,y,20,Obj_enemy,false,false){
		PLAYER_LIFE	-=1
		got_hit = true
		audio_play_sound(snd_SESuper,0,false);
		sprite_index = spr_SupermanHit;
		hit_timer = 60
}

	image_speed = 0
	
	if(keyboard_check(vk_right)){
		x += 10
		image_speed = 1
	}
	if(keyboard_check(vk_left)){
		x -=10
		image_speed = 1
	}

	if(keyboard_check(vk_up)){
		y -= 10
		image_speed = 1
	}
	if(keyboard_check(vk_down)){
		y +=10
		image_speed = 1
	}
	
}
if x > room_width{
x = 0
}
if x < 0{
x = room_width
}

if y > room_height{
y =0
}
if y < 0{   
y = room_height
}

if got_hit{
	hit_timer -=1
	image_speed = 0
	

	if	hit_timer <= 0{
		got_hit = false
		sprite_index = spr_Hero;
		x = start_x
		y = start_y
	}
}

