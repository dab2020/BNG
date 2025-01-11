function scr_dialogue_start(dialogue_array){
	/// 
global.dialogue_active = true;
global.dialogue_array = argument0; // Array of dialogue lines
global.dialogue_index = 0;         // Start from the first line
global.dialogue_typing = true;     // Typing effect status
global.dialogue_timer = 0;         // Timer for typing effect
global.current_text = "";          // Currently typed text

}