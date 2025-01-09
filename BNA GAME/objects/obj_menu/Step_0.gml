// Step Event

// Submit logic
if (keyboard_check_pressed(vk_enter)) {
    if (string_length(delegation_number) > 0 && string_length(password_input) > 0) {
        var user_id = real(delegation_number);
        var correct_password = user_id * 16;
        
        if (real(password_input) == correct_password) {
            message = "Login successful!";
            room_goto_next(); // Proceed to the next room or functionality
        } else {
            message = "Invalid password!";
        }
    } else {
        message = "Please fill in all fields.";
    }
}

// Switch input focus with Tab key
if (keyboard_check_pressed(vk_tab)) {
    if (input_focus == "delegation") {
        input_focus = "password";
    } else {
        input_focus = "delegation";
    }
}

// Handle backspace for the active field
if (keyboard_check_pressed(vk_backspace)) {
    if (input_focus == "delegation" && string_length(delegation_number) > 0) {
        delegation_number = string_delete(delegation_number, string_length(delegation_number), 1);
    } else if (input_focus == "password" && string_length(password_input) > 0) {
        password_input = string_delete(password_input, string_length(password_input), 1);
    }
}

// Handle numeric input for the active field
for (var key = ord("0"); key <= ord("9"); key++) {
    if (keyboard_check_pressed(key)) {
        if (input_focus == "delegation" && string_length(delegation_number) < 10) {
            delegation_number += chr(key);
        } else if (input_focus == "password" && string_length(password_input) < 10) {
            password_input += chr(key);
        }
    }
}
