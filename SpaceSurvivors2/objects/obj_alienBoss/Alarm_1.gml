/// @description Insert description here
// You can write your code in this editor
alarm[1]=irandom_range(min_time,max_time)


var padding_ = random_range(-100,100)

if(start_spawn){
instance_create_depth(x-50, y+padding_,depth,obj_alien)
}