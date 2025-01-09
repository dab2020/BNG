// Draw the question mark sprite
draw_self();

// Show tutorial text with fade effect
if (alpha > 0) {
    var message = "Use the arrow keys to move left and right.";
    draw_set_color(c_white);
    draw_set_alpha(alpha); // Set transparency
    draw_text(x, y - 50, message); // Adjust position of the text
    draw_set_alpha(1); // Reset alpha to default
}
