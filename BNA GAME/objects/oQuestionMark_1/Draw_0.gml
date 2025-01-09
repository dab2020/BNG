// Draw the question mark sprite
draw_self();

// Show tutorial text with fade effect
if (alpha > 0) {
    var message = "Press the Up Arrow to jump.";
	var message1 = "Hold it longer for a higher jump.";
    draw_set_color(c_white);
    draw_set_alpha(alpha); // Set transparency
    draw_text(x, y - 70, message); // Adjust position of the text
	draw_text(x, y - 50, message1); // Adjust position of the text
    draw_set_alpha(1); // Reset alpha to default
}
