xAlienSpawn = room_width
yAlienSpawn = random_range(-50,room_height+50)


cooldownLow = global.game_speed_fps*3
cooldownHigh = global.game_speed_fps*5

spawn=0

alarm[0]=random_range(cooldownLow, cooldownHigh)

alarm[1] = global.game_speed_fps*5 // start spawning
alarm[2] = global.game_speed_fps*120 // every 2 mins: Spawn faster enemies!
