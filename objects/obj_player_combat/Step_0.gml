/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("D")) && !place_meeting(x + 2, y, obj_hitbox_wall)) {
	x += 2;
	image_xscale =+1;
	directionFacing = "Right";
}
if (keyboard_check(ord("A")) && !place_meeting(x - 2, y, obj_hitbox_wall)) {
	x -= 2;
	image_xscale =-1;
	directionFacing = "Left";
}

///// WALL HIT DETECTION START /////
if (place_meeting(x,y+2,obj_hitbox_wall)){
	vspeed = 0;
	gravity = 0;
	grounded = true;
	jumpDash = false;
	doubleJumpDash = false;
	jumped = false;
	doubleJumped = false;
} else {
	gravity = .25;
	grounded = false;
	
}
if (place_meeting(x+speed, y, obj_hitbox_wall)) {
	while(!place_meeting(x+sign(speed), y, obj_hitbox_wall)){
		x += sign(speed);
	}
	speed = 0;
}
if (place_meeting(x, y+vspeed, obj_hitbox_wall)) {
	while(!place_meeting(x, y+sign(vspeed)+1, obj_hitbox_wall)){
		y += sign(vspeed);
	}
	vspeed = 0;
}
///// WALL HIT DETECTION STOP /////

///// DOUBLE JUMP PROPERTIES START /////
if (jumped == true && doubleJumped == false) {
	if (keyboard_check_pressed(vk_space)) {
		speed = 0;
		dashed = false;
		vspeed = 0;
		vspeed -= 5;
		jumped = false;
		doubleJumped = true;
		jumpDash = false;
	}
}


if (jumped == false) {
	if (keyboard_check_pressed(vk_space)) {
		speed = 0;
		dashed = false;
		vspeed = 0;
		vspeed -=5;
		jumped = true;
		jumpDash = false;
	}
}
///// DOUBLE JUMP PROPERTIES END /////

///// DASH PROPERTIES START /////
if (dashed == false && keyboard_check_pressed(vk_shift) && jumpDash == false) {
	if (directionFacing = "Right") {
		vspeed = 0;
		gravity = 0;
		speed += 8;
		dashed = true;
	} 
	
	if (directionFacing = "Left") {
		vspeed = 0;
		gravity = 0;
		if (grounded == true) {
			speed -= 8;
		} else {
			speed+=8;
		}
		dashed = true;
	}
	
}

if (dashed == true && directionFacing = "Right") {
	 speed -= .4;
	 direction = 0;
	if (speed <= 0) {
		dashed = false;
		gravity = .25;
		speed = 0;
	}
}

if (dashed == true && directionFacing = "Left") {
	if (grounded == true){
		speed += .4;
		direction = 0;
	} else {
		speed -= .4;
		direction = 180;
	}
	if (grounded == true && speed >= 0) {
		dashed = false;
		gravity = .25;
		speed = 0
	} else if (grounded == false && speed <= 0) {
		dashed = false;
		gravity = .25;
		speed = 0
	}
}
///// DASH PROPERTIES END /////

///// JUMP DASH PROPERTIES START /////
if (grounded == false && dashed == true) {
	jumpDash = true;
}

///// JUMP DASH PROPERTIES END /////
show_debug_message(string(speed));


