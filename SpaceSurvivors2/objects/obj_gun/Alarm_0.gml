/// @description recharge 10

if(energy<maxEnergy){
	energy+=10
	
	if(energy>maxEnergy){energy=maxEnergy}
}

alarm[0]=global.game_speed_fps*10