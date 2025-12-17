/// @description Insert description here
// You can write your code in this editor
alpha=0

go=0
alarm[1] = room_speed*3

depth=-100000
global.level++

text_ = "LEVEL: " + string(global.level)

if(global.level==2)
{
	var layer_id = layer_get_id("Black_Space");
	var bg_id    = layer_background_get_id(layer_id);

	layer_background_blend(bg_id, #330000);
}

if(global.level==3)
{
	var layer_id = layer_get_id("Black_Space");
	var bg_id    = layer_background_get_id(layer_id);

	layer_background_blend(bg_id, #19193D);
}

if(global.level==4){

text_="BOSS INCOMING"
	var layer_id = layer_get_id("Black_Space");
	var bg_id    = layer_background_get_id(layer_id);

	layer_background_blend(bg_id, #280128);

	instance_create_depth(2300,489.5,-10000,obj_alienBoss)
}

if(global.level==5){

text_="VICTORY!!"
	var layer_id = layer_get_id("Black_Space");
	var bg_id    = layer_background_get_id(layer_id);

	layer_background_blend(bg_id, #000000);
}