// Does not exist
if (!instance_exists(oBoxName) || !started) exit;

draw_set_font(Font1_2);
var _messageData = dialogue[messageIndex];
var _name = _messageData.speaker.name;
var _message = _messageData.message;
var _image = _messageData.speaker.image;

_message = string_copy(_message, 0, characters);


draw_text(oBoxName.x+10, oBoxName.y +11, _name);

draw_set_font(Font1_3);

var _width = oBoxMessage.sprite_width;

draw_text_ext(oBoxMessage.x, oBoxMessage.y+20, _message, -1, _width);



var _centerX = oBoxImage.x + oBoxImage.sprite_width /2;
var _centerY = oBoxImage.y + oBoxImage.sprite_width /2;

var _scaleX = oBoxImage.sprite_width / sprite_get_width(_image);
var _scaleY = oBoxImage.sprite_height / sprite_get_height(_image);

draw_sprite_ext(_image, 0, _centerX, _centerY,_scaleX, _scaleY, 0 , -1, 1);


draw_set_font(-1);