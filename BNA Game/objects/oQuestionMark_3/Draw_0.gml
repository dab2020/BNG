// Draw the question mark sprite
draw_self();

// Show tutorial text with fade effect
if (alpha > 0) {
    var message = "Your Currencies are shown in the top left";
	var message1 = "There are Three types";
	var message2 = "Resource Points (Coin)";
	var message3 = "Energy Points (Gem)";
	var message4 = "Elixir (Potion)";
    draw_set_color(c_green)
    draw_set_alpha(alpha); // Set transparency
    draw_text(x, y - 130, message); // Adjust position of the text
	draw_text(x, y - 110, message1); // Adjust position of the text
	draw_text(x, y - 90, message2); // Adjust position of the text
	draw_text(x, y - 70, message3); // Adjust position of the text
	draw_text(x, y - 50, message4); // Adjust position of the text
    draw_set_alpha(1); // Reset alpha to default
}
