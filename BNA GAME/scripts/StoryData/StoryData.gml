
#region Prompt1

function stage1red_door(){
	if ((obj_resource_display.resourcecurrency > 5) && (obj_resource_display.energycurrency > 10)){
		obj_resource_display.resourcecurrency = obj_resource_display.resourcecurrency - 5
		obj_resource_display.energycurrency = obj_resource_display.energycurrency - 10
		instance_create_depth(0,0, -9999, objFade);
		spawn_x = 5100;
		spawn_y = 300;
		oPlayer.x = spawn_x; // Directly update oPlayer's x
		oPlayer.y = spawn_y; // Directly update oPlayer's y
		global.health = global.health - 5
		}
		else {
			 Menu(x,y,[["You donot have sufficent resources", -1]])
		}
	
}

function stage1red_door1(){
	if ((obj_resource_display.elixircurrency > 15) && (obj_resource_display.energycurrency > 10)){
		obj_resource_display.elixircurrency = obj_resource_display.elixircurrency - 10
		obj_resource_display.energycurrency = obj_resource_display.energycurrency - 10
		instance_create_depth(0,0, -9999, objFade);
		spawn_x = 5100;
		spawn_y = 100;
		global.health = global.health -  5
		oPlayer.x = spawn_x; // Directly update oPlayer's x
		oPlayer.y = spawn_y; // Directly update oPlayer's y
		}
		else {
			Menu(x,y,[["You donot have sufficent resources", -1]])
			
		}
}

function stage1red_door2(){
	if ((obj_resource_display.resourcecurrency > 15) && (obj_resource_display.elixircurrency > 5) || (obj_resource_display.energycurrency > 5)){
		obj_resource_display.elixircurrency = obj_resource_display.elixircurrency - 5
		obj_resource_display.energycurrency = obj_resource_display.energycurrency - 5
		obj_resource_display.resourcecurrency = obj_resource_display.resourcecurrency - 15
		instance_create_depth(0,0, -9999, objFade);
		spawn_x = 4500;
		spawn_y = 240;
		global.health = global.health - 20
		oPlayer.x = spawn_x; // Directly update oPlayer's x
		oPlayer.y = spawn_y; // Directly update oPlayer's y
		}
		else {
			Menu(x,y,[["You donot have sufficent resources", -1]])
		}
}



#endregion

#region Prompt2
function stage2one(){
	if ((obj_resource_display.resourcecurrency > 10) && (obj_resource_display.energycurrency > 10)){
		// Trade Offs
		obj_resource_display.resourcecurrency = obj_resource_display.resourcecurrency - 10
		obj_resource_display.energycurrency = obj_resource_display.energycurrency - 10
		global.health = global.health -5
		instance_create_depth(0,0, -9999, objFade);
		room_goto(rkeyWater);
		
		
		}
		else {
			 Menu(x,y,[["You donot have sufficent resources", -1]])
		}
	
}

function stage2two(){
	// Trade Offs
	if ((obj_resource_display.elixircurrency > 15) && (obj_resource_display.energycurrency > 5)){
		obj_resource_display.elixircurrency = obj_resource_display.elixircurrency - 15
		obj_resource_display.energycurrency = obj_resource_display.energycurrency - 5
		instance_create_depth(0,0, -9999, objFade);
		room_goto(rkeyElixir);

		}
		else {
			Menu(x,y,[["You donot have sufficent resources", -1]])
		}
}

function stage2three (){
	instance_create_depth(0,0, -9999, objFade);
	spawn_x = 7100;
	spawn_y = 250;
	oPlayer.x = spawn_x; // Directly update oPlayer's x
	oPlayer.y = spawn_y;
}


function stage2four(){
	instance_create_depth(0,0, -9999, objFade);
	spawn_x = 5100;
	spawn_y = 300;
	oPlayer.x = spawn_x; // Directly update oPlayer's x
	oPlayer.y = spawn_y; // Directly update oPlayer's y
}

function stage2five(){
	spawn_x = 7100;
	spawn_y = 250;
	oPlayer.x = spawn_x; // Directly update oPlayer's x
	oPlayer.y = spawn_y; // Directly update oPlayer's y
}

#endregion

#region Prompt3
function stage3correct(){
	global.health += 10;
	global.health = clamp(global.health, 0, 100)
	instance_create_depth(0,0, -9999, objFade);
	spawn_x = 10500;
	spawn_y = 250;
	oPlayer.x = spawn_x; // Directly update oPlayer's x
	oPlayer.y = spawn_y;
}



function stage3wrong(){
	global.health -= 5;
	Menu(x,y,[["Incorrect Try Again", -1]])
}



function stage3skip(){
	if (obj_resource_display.elixircurrency > 15){
		obj_resource_display.elixircurrency = obj_resource_display.elixircurrency - 15;
		instance_create_depth(0,0, -9999, objFade);
		spawn_x = 10500;
		spawn_y = 250;
		oPlayer.x = spawn_x; // Directly update oPlayer's x
		oPlayer.y = spawn_y;
	}
}



#endregion