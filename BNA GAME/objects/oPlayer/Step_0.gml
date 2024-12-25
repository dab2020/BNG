// Made by Dayyan Abdullah @dab2020 dayyanabdullah.com
// Get inputs

var _key_left = keyboard_check(vk_left);
var _key_right = keyboard_check(vk_right);


// get direction
var _dir = _key_right - _key_left;

// get speed
hsp += _dir*accel;

// slow down in no input
if (_dir == 0) {
		if (hsp < 0) { // going left
			hsp = min(hsp + decel, 0);
		} else { // going right
			hsp = max(hsp - decel, 0);
		}	
}

hsp = clamp(hsp,-max_hsp, max_hsp); // set max speed


// get it to move
x+= hsp;