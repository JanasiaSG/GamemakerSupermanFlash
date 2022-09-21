/// @description Insert description here
// You can write your code in this editor
y   +=rock_spd

if rock_reset == true{
	
	y = -100
	rock_spd = random_range(7,10)
	x = random_range(0,room_width)
	rock_reset = false

}
if y > room_height {

rock_reset = true

}

