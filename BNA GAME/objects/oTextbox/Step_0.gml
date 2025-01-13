if (!started) exit;

// get message
var _messageData = dialogue[messageIndex];
var _message = _messageData.message;

// messafe not complete

if (characters < string_length(_message)) {
	var _textspeed = textSpeed;
	var _char = string_char_at(_message, characters);
	if (_char =="."|| _char == "!" || _char == "?"){
		_textspeed /=6;
	}
	
	characters += _textspeed;
}
else {
	if (keyboard_check(vk_space)) {
		if ((messageIndex + 1) < array_length(dialogue)) {
			next_message();
		}
		else {
			close_textbox();
		}
	}
} 
			
			