var player = instance_nearest(x, y, obj_walky);
if (player != noone && !instance_exists(oTextbox)) {
    if (point_distance(x, y, player.x, player.y) < 128) { // Adjust the distance threshold as needed
        player.showMessageIcon = true;
		if (keyboard_check_pressed(vk_space)) {
			create_textbox(player.defaultDialogue);
		}
    } else {
        
    }
} else {
    
}
