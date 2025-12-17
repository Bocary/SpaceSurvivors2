/// @description Insert description here
// You can write your code in this editor


speed=0

if(tick==0){
tick=1
vspeed=-2
}
else
{
	tick=0
	vspeed=2
}

alarm[2] = irandom_range(room_speed/2, room_speed)