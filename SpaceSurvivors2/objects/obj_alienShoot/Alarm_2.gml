/// @description Insert description here
// You can write your code in this editor
alarm[1] = irandom_range(room_speed*2, room_speed*4)

if(x>1300){
speed=moveSpeed
}
else
{
    var inst_ = instance_create_depth(x+40,y,depth,obj_shotEnemy)
	with(inst_){move_towards_point(660,500,speed) image_angle=direction}
	audio_play_sound(s_spacegun,1,false)
}

