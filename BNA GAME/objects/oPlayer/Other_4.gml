if (global.chesttrans) {
    spawn_x = 3250;
    spawn_y = 50;
    x = spawn_x; // Directly update oPlayer's x
    y = spawn_y; // Directly update oPlayer's y
    global.chesttrans = false; // 
	show_debug_message("Player position updated to: " + string(spawn_x) + ", " + string(spawn_y));

}
