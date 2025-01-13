function createTextbox () {
	if (!global.paused) {
		if (!keyboard_check_pressed(vk_space)) {
			hsp = 0
			vsp = 0
			exit()
		}
		global.layer = layer_create(100, "Textbox");
		global.layer.id = layer_get_all()
		
	}
}