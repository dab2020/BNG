if (global.dialogue_active) {
    // Draw background
    draw_rectangle_color(50, display_get_height() - 150, display_get_width() - 50, display_get_height() - 50, c_black, c_black, c_black, c_black, false);

    // Draw text
    draw_set_color(c_white);
    draw_text(75, display_get_height() - 135, global.current_text);
}
