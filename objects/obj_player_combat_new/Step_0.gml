/// @description Insert description here
// You can write your code in this editor
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(vk_space);

//React to inputs
if (dashed == false) move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;

if (place_meeting(x,y+1,obj_hitbox_wall)) {
	grounded = true;
	jumped = false;
	doubleJumped = false;
	jumpDash = false;
	
} else {
	grounded = false;
}

if (jumped == true && doubleJumped == false){
	if (keyboard_check_pressed(vk_space)) {
		vsp = 0;
		vsp = key_jump * -jumpspeed;
		dashed = false;
		jumpDash = false;
		movespeed = 2;
		grav = .37;
		doubleJumped = true;

	}
}
if (jumped == false){
	if (key_jump == true) {
		vsp = key_jump * -jumpspeed;
		jumped = true;
		grounded = false;
		dashed = false;
		movespeed = 2;
		grav = .37;		
	}
}

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_hitbox_wall)) {
	
	while (!place_meeting(x+sign(hsp),y,obj_hitbox_wall)) {
		x += sign(hsp);
	}
	
	hsp = 0;
}

//Vertical Collision
if (place_meeting(x,y+vsp,obj_hitbox_wall)) {
	
	while (!place_meeting(x,y+sign(vsp),obj_hitbox_wall)) {
		y += sign(vsp);
	}
	
	vsp = 0;
}

///// DASH PROPERTIES /////
if (keyboard_check_pressed(vk_shift) && dashed == false && jumpDash == false) {
	movespeed += 8;
	dashed = true;
	grav = 0;
	vsp = 0;
}

if (dashed == true) {
	movespeed -= .4;
	if (movespeed < 2) {
		movespeed = 2
		grav = .37
		dashed = false;
	}
}

if (jumped == true && dashed == true) jumpDash = true;
///// DASH PROPERTIES END /////

y += vsp;
x += hsp;