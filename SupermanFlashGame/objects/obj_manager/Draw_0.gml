/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_blue)
	draw_text(20,20, "LIFES: " +string(PLAYER_LIFE))

	draw_set_color(c_red)
	draw_text(20,60, "POINTS: " +string(POINTS))
	
	draw_set_color(c_yellow)
	draw_text(20,120, "BEST SCORE: " +string(BESTSCORE))

