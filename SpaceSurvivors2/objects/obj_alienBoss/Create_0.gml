image_xscale = 6
image_yscale = 6

base_y = y;
wave_time = 0;

min_time = room_speed
max_time = room_speed*3

start_spawn = false

alarm[1]=irandom_range(min_time,max_time)


maxhp=100000000
hitpoints=maxhp

inst_ = instance_create_depth(1584,34,-10000,obj_bossHealth)

with(inst_)
{
maxhp=other.maxhp
hitpoints=maxhp
}