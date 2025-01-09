// Draw Event
// Clear the background
draw_clear(c_black);

// Set font and color for general text
draw_set_font(-1); // Default font
draw_set_color(c_white);

// Draw the title
draw_text(room_width / 2 - 50, 50, "Login Menu");

// Delegation Number Label and Input Box
draw_text(100, 150, "Delegation Number:");
if (input_focus == "delegation") {
    draw_set_color(c_maroon); // Highlight the active input box
} else {
    draw_set_color(c_gray);   // Default color for inactive input box
}
draw_rectangle(300, 140, 500, 180, false); // Draw the box outline
draw_set_color(c_white); // Reset to white for text
draw_text(310, 150, string(delegation_number)); // Display the entered delegation number

// Password Label and Input Box
draw_text(100, 200, "Password:");
if (input_focus == "password") {
    draw_set_color(c_maroon); // Highlight the active input box
} else {
    draw_set_color(c_gray);   // Default color for inactive input box
}
draw_rectangle(300, 190, 500, 230, false); // Draw the box outline
draw_set_color(c_white); // Reset to white for text
draw_text(310, 200, string_repeat("*", string_length(password_input))); // Masked password with asterisks

// Instructions and Feedback
draw_text(100, 300, "Press Tab to switch between fields and Enter to submit.");
draw_text(100, 350, message); // Feedback message
