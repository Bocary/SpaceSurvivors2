image_xscale = 1
image_yscale = 1

moveSpeed = random_range(.5,1.5)

speed=moveSpeed

move_towards_point(660,500,speed)

alarm[1] = irandom_range(room_speed*2, room_speed*4)