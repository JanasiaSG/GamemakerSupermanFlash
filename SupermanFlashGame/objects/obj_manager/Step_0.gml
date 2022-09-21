/// @description Insert description here
// You can write your code in this editor_start{

if room == rm_start{
	if keyboard_check(vk_space){
		
		room_goto(rm_game)
		
	}
}


if room == rm_game || room == rm_end{
	if PLAYER_LIFE <= 0{
		
		room_goto(rm_final)
		
	}
}

if room == rm_game{
	if !audio_is_playing(snd_bMusic){
		audio_play_sound(snd_bMusic,0,false);
	}
	if (keyboard_check_pressed(vk_space)){
		room_goto(rm_end)
	}
}

if room == rm_end{
	if !audio_is_playing(snd_theflash){
		audio_play_sound(snd_theflash,0,false)
	}
}
//PLAYER_LIFE = player_life_max
if room == rm_game{
	Points_timer += 1
	
	if Points_timer >= Points_timer_max{
		POINTS += Points_time_bonus
		Points_timer = 0
	}
	if POINTS > BESTSCORE{
		BESTSCORE = POINTS
	}
	//if PLAYER_LIFE <= 0{
	//	room_goto(rm_game)
	//}
	if keyboard_check_pressed(vk_space){
		room_goto(rm_end)
		PLAYER_LIFE = player_life_max
		POINTS = 0
	}	
}

