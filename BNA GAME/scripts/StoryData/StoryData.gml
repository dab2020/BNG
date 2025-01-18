
#region Prompt1

function stage1red_door(){
	if ((obj_resource_display.resourcecurrency > 5) || (obj_resource_display.energycurrency > 10)){
		obj_resource_display.resourcecurrency = obj_resource_display.resourcecurrency - 5
		obj_resource_display.energycurrency = obj_resource_display.energycurrency - 10
		spawn_x = 5100;
		spawn_y = 300;
		oPlayer.x = spawn_x; // Directly update oPlayer's x
		oPlayer.y = spawn_y; // Directly update oPlayer's y
		global.health = global.health - 5
		}
		else {
			 draw_text(x, y - 50, "You donot have Sufficent Resources"); // Adjust position of the text
		}
	
}

function stage1red_door1(){
	if ((obj_resource_display.elixircurrency > 15) || (obj_resource_display.energycurrency > 10)){
		obj_resource_display.elixircurrency = obj_resource_display.elixircurrency - 10
		obj_resource_display.energycurrency = obj_resource_display.energycurrency - 10
		spawn_x = 5100;
		spawn_y = 100;
		global.health = global.health -  5
		oPlayer.x = spawn_x; // Directly update oPlayer's x
		oPlayer.y = spawn_y; // Directly update oPlayer's y
		}
		else {
			 draw_text(x, y - 50, "You donot have Sufficent Resources"); // Adjust position of the text
		}
}

function stage1red_door2(){
	if ((obj_resource_display.resourcecurrency > 15) || (obj_resource_display.elixircurrency > 5) || (obj_resource_display.energycurrency > 5)){
		obj_resource_display.elixircurrency = obj_resource_display.elixircurrency - 5
		obj_resource_display.energycurrency = obj_resource_display.energycurrency - 5
		obj_resource_display.resourcecurrency = obj_resource_display.resourcecurrency - 15
		spawn_x = 4500;
		spawn_y = 240;
		global.health = global.health - 20
		oPlayer.x = spawn_x; // Directly update oPlayer's x
		oPlayer.y = spawn_y; // Directly update oPlayer's y
		}
		else {
			 draw_text(x, y - 50, "You donot have Sufficent Resources"); // Adjust position of the text
		}
}



#endregion

#region Prompt2
function stage2red_door(){
	if ((obj_resource_display.resourcecurrency > 10) || (obj_resource_display.energycurrency > 10)){
		obj_resource_display.resourcecurrency = obj_resource_display.resourcecurrency - 10
		obj_resource_display.energycurrency = obj_resource_display.energycurrency - 10

		obj_health_bar.health = obj_health_bar.health - 5
		}
		else {
			 draw_text(x, y - 50, "You donot have Sufficent Resources"); // Adjust position of the text
		}
	
}

function stage2red_door1(){
	if ((obj_resource_display.elixircurrency > 15) || (obj_resource_display.energycurrency > 10)){
		obj_resource_display.elixircurrency = obj_resource_display.elixircurrency - 10
		obj_resource_display.energycurrency = obj_resource_display.energycurrency - 10

		obj_health_bar.health = obj_health_bar.health - 5

		}
		else {
			 draw_text(x, y - 50, "You donot have Sufficent Resources"); // Adjust position of the text
		}
}

function stage2red_door2(){
	if ((obj_resource_display.resourcecurrency > 15) || (obj_resource_display.elixircurrency > 5) || (obj_resource_display.energycurrency > 5)){
		obj_resource_display.elixircurrency = obj_resource_display.elixircurrency - 5
		obj_resource_display.energycurrency = obj_resource_display.energycurrency - 5
		obj_resource_display.resourcecurrency = obj_resource_display.resourcecurrency - 15
		spawn_x = 4500;
		spawn_y = 240;
		global.health = global.health - 20
		oPlayer.x = spawn_x; // Directly update oPlayer's x
		oPlayer.y = spawn_y; // Directly update oPlayer's y
		}
		else {
			 draw_text(x, y - 50, "You donot have Sufficent Resources"); // Adjust position of the text
		}
}


#endregion