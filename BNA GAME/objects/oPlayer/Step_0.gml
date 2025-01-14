// Made by Dayyan Abdullah @dab2020 dayyanabdullah.com




#region Pause on Chat
if (global.paused) {
	sprite_index = sPlayer;
	hsp = 0;
	vsp = 0;
	exit;
}
#endregion

#region Smooth Transition Variables
// Transition variables
if (!variable_instance_exists(id, "transition_alpha")) {
    transition_alpha = 1; // Initialize alpha for sprite blending
    target_sprite = sprite_index; // Initialize target sprite
}
#endregion

#region Get Status
// Calculte Status
var _onground = place_meeting(x, y+groundbuffer, [my_tilemap,my_tilemap1]);
var _onwall = place_meeting(x+1,y, [my_tilemap,  my_tilemap1]) - place_meeting(x-1,y, [my_tilemap,  my_tilemap1]);


#endregion

#region Inputs
// Get inputs
var _key_left = keyboard_check(vk_left);
var _key_right = keyboard_check(vk_right);
var _key_jump = keyboard_check_pressed(vk_up);
var _key_jump_held = keyboard_check(vk_up);
#endregion



#region Horizontal Movement
// Calculate horizontal


// Get direction Postive --> Right, Negative goes to the Left
var _dir = _key_right - _key_left;
global._dir = _dir;

// Get speed (acceleration and deceleration)
hsp += _dir * accel;

// Slow down if there is no input
if (_dir == 0) {
    if (hsp < 0) { // Moving left
        hsp = min(hsp + decel, 0); // Gradually stop
    } else if (hsp > 0) { // Moving right
        hsp = max(hsp - decel, 0); // Gradually stop
    }
}

// Clamp the speed to the maximum allowable value
hsp = clamp(hsp, -max_hsp, max_hsp);


 if (_onwall !=0) && (!_onground) && (_key_jump) {
	 hsp = -_onwall + wallJumpDistance;
	 vsp = jumpheight_Wall;
	 
 }
	

#endregion

#region Vertical Movement
// Calculate Vertical Movement
// add gravity

var _grav_final = grav;
var _grav_max_final = grav_max;
if (_onwall != 0) {
	if (vsp > 0){
		_grav_final = grav_wall;
		_grav_max_final = grav_max_wall;
	}
} else {
	_grav_final = grav;
}

vsp += _grav_final;
vsp = clamp(vsp, jumpheight, _grav_max_final);

//Ground Jump
if (jumpbuffer > 0){
	jumpbuffer --;
	if (_key_jump) && (vsp > 0){
		jumpbuffer = 0;
		vsp = jumpheight;

	}

}
if (_onground) jumpbuffer = 10;

// Variable jump height
if (vsp < 0) && (!_key_jump_held){
	vsp = max(vsp, jumpheight_min);
}


#endregion


#region Collision System
//Horinzontal COllision


if (place_meeting(x+hsp, y,my_tilemap)){
	var _x = round(x);
	var _pixel = sign(hsp);
	while (!place_meeting(_x+_pixel, y,my_tilemap)) _x += _pixel;
	x = _x;
	hsp = 0;
};
x+= hsp;
// vertical collision
if place_meeting(x, y+vsp, [my_tilemap, my_tilemap1]){
	var _y = round(y);
	var _pixel = sign(vsp);
	while (!place_meeting(x, _y+_pixel, [my_tilemap, my_tilemap1])) _y += _pixel;
	y = _y;
	vsp = 0;
}

// get it to move

y+= vsp


#endregion

#region Sprites

// Determine the sprite based on the player's state
if (_onwall != 0 && !_onground && vsp > 0) {
    sprite_index = sPlayerWall; // On a wall
    image_xscale = -_onwall;   // Orient based on wall side (left or right)
} else if (!_onground) {
    if (vsp < 0) {
        sprite_index = sPlayerJump; // Jumping
    } else {
        sprite_index = sPlayerLand; // Falling
    }
} else if (abs(hsp) > 0) {
    sprite_index = sPlayerRun; // Running
    image_xscale = sign(hsp);  // Flip sprite based on direction
} else {
    sprite_index = sPlayer; // Idle (default standing sprite)
}

// Ensure correct orientation when stationary
if (_dir != 0) {
    image_xscale = _dir; // Flip sprite if moving left or right
}

#endregion


// Restart function (DELETE BF PRODUCTION)
if (keyboard_check_pressed(vk_enter)){
	game_restart();
}



if (global.chesttrans) {
    x = 3250;
    y = 50;
    global.chesttrans = false; // Reset the flag
}