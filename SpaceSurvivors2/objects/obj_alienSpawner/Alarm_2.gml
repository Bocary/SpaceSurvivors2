/// @description Insert description here
// You can write your code in this editor
cooldownLow /=2
cooldownHigh /=2


audio_play_sound(choose(s_faster,s_careful_faster),1,false)

if(cooldownLow<global.game_speed_fps/10){cooldownLow=global.game_speed_fps/10}
if(cooldownHigh<global.game_speed_fps/7){cooldownHigh=global.game_speed_fps/7}

alarm[2] = global.game_speed_fps*120