// Draw the question mark sprite
draw_self();

// Show tutorial text with fade effect
if (alpha > 0) {
	var message3 = "Characters with a Speech Bubble around them";
	var message4 = "can be talked to by pressing the Space Bar";
    draw_set_color(c_white)
    draw_set_alpha(alpha); // Set transparency
	draw_text(x, y - 70, message3); // Adjust position of the text
	draw_text(x, y - 50, message4); // Adjust position of the text
    draw_set_alpha(1); // Reset alpha to default
}
