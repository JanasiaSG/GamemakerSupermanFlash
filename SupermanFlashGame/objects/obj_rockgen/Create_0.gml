/// @description Insert description here
// You can write your code in this editor

num_rocks = 10

for (i=0; i<num_rocks; i+=1){
instance_create_depth(random_range(0,room_width),room_height,0,Obj_enemy);
}


