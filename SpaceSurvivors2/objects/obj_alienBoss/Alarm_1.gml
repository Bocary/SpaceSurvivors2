/// @description Insert description here
// You can write your code in this editor
alarm[1]=irandom_range(min_time,max_time)


var padding_ = 250

var spawn_ = choose(obj_alien, obj_alienZigZag, obj_alienShoot)

if(spawn_==obj_alienZigZag){padding_=-250}
if(spawn_==obj_alienShoot){padding_=0}

if(start_spawn){
instance_create_depth(x, y+padding_,depth,spawn_)
}