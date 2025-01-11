if (global.dialogue_active) {
    // Typing effect
    if (global.dialogue_typing) {
        if (global.dialogue_timer == 0 && string_length(global.current_text) < string_length(global.dialogue_array[global.dialogue_index])) {
            global.current_text += string_char_at(global.dialogue_array[global.dialogue_index], string_length(global.current_text) + 1);
            global.dialogue_timer = global.typing_speed;
        } else {
            global.dialogue_timer -= 1;
        }
    }

    // Proceed to next line
    if (!global.dialogue_typing && keyboard_check_pressed(vk_space)) {
        global.dialogue_index += 1;
        if (global.dialogue_index < array_length(global.dialogue_array)) {
            global.dialogue_typing = true;
            global.current_text = "";
        } else {
            global.dialogue_active = false;
        }
    }

    // Skip typing effect
    if (keyboard_check_pressed(vk_space) && global.dialogue_typing) {
        global.dialogue_typing = false;
        global.current_text = global.dialogue_array[global.dialogue_index];
    }
}
