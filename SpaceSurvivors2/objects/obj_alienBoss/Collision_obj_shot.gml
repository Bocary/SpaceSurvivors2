
with(inst_){
hitpoints-=1000000
}

instance_destroy(other)

audio_play_sound(s_splat,1,false)

if(inst_.hitpoints<=0)
{
instance_destroy(obj_alienSpawner)
instance_destroy(obj_alien)
instance_destroy(self)
}