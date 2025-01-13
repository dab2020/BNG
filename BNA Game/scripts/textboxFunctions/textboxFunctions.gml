function create_textbox(){
    // Create textbox
    var _textbox = instance_create_layer(0, 0, "Textbox", oTextbox);

    // Get camera position
    var _camX = camera_get_view_x(view_camera[0]);
    var _camY = camera_get_view_y(view_camera[0]);

    // Get viewport dimensions
    var _viewWidth = camera_get_view_width(view_camera[0]);
    var _viewHeight = camera_get_view_height(view_camera[0]);

    // Center sequence in the viewport
    var _seqX = _camX + (_viewWidth / 2) - (896 / 2); // 896 is the sequence width
    var _seqY = _camY + (_viewHeight / 2) - (400 / 2); // 400 is the sequence height

    // Create sequence in the correct position
    global.textboxSequence = layer_sequence_create("Textbox", _seqX, _seqY, seqTextbox);
	health = health - 10;
	global.paused = true;
}



function close_textbox(){
	layer_sequence_destroy(global.textboxSequence);
	instance_destroy(oTextbox);
	
	
	
	global.paused = false;
}


