/// @description Insert description here
// You can write your code in this editor

hitpoints--
audio_play_sound(s_splat,1,false)

if(hitpoints<1){
global.gold+=5
instance_destroy(self)
}