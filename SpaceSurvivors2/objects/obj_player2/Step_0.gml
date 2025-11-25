var _delta_time_seconds = delta_time / 1000000

var _h_input = 0
var _v_input = 0

if(gp != -1){
    // get joystick values
	_h_input = gamepad_axis_value(gp, gp_axislh)
	_v_input = gamepad_axis_value(gp, gp_axislv)
} else {
	// ARROW CONTROLS:
	_h_input = keyboard_check(vk_right) - keyboard_check(vk_left)
	_v_input = keyboard_check(vk_down) - keyboard_check(vk_up)
}


if (_h_input != 0) {
	xSpeed += _h_input * acceleration * _delta_time_seconds
} else {
	if (xSpeed > 0) {
		xSpeed = max(0, xSpeed - acceleration * _delta_time_seconds)
	} else if (xSpeed < 0) {
		xSpeed = min(0, xSpeed + acceleration * _delta_time_seconds)
	}
}

if (_v_input != 0) {
	//IF TOUCHING SHOOT PAD, MOVE GUN
	var inst_ = instance_place(x,y,obj_shootArea)
	if (instance_exists(inst_)) { with(inst_) {
		parent.image_angle -= _v_input
		
		if (parent.image_angle > 90) {
			parent.image_angle = 90
		} else if (parent.image_angle < -90) {
			parent.image_angle = -90
		}
		
		ySpeed = 0
	}}
	
	//ELSE: MOVE PLAYER
	else {
		ySpeed += _v_input * acceleration * _delta_time_seconds
	}
} else {
	if (ySpeed > 0) {
		ySpeed = max(0, ySpeed - acceleration * _delta_time_seconds)
	} else if (ySpeed < 0) {
		ySpeed = min(0, ySpeed + acceleration * _delta_time_seconds)
	}
}

var _current_speed = (xSpeed*xSpeed)+(ySpeed*ySpeed)

if (_current_speed > (maxSpeed * maxSpeed)) {
	// Get actual speed
	_current_speed = sqrt(_current_speed)
	
	var _scale_factor = maxSpeed / _current_speed
	
	xSpeed *= _scale_factor
	ySpeed *= _scale_factor
}

x += xSpeed * _delta_time_seconds
y += ySpeed * _delta_time_seconds