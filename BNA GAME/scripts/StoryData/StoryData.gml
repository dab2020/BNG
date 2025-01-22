
#region Prompt1

function stage1red_door(){
	if ((obj_resource_display.resourcecurrency > 5) && (obj_resource_display.energycurrency > 10)){
		obj_resource_display.resourcecurrency = obj_resource_display.resourcecurrency - 5
		obj_resource_display.energycurrency = obj_resource_display.energycurrency - 10
		
		spawn_x = 5100;
		spawn_y = 300;
		oPlayer.x = spawn_x; // Directly update oPlayer's x
		oPlayer.y = spawn_y; // Directly update oPlayer's y
		global.health = global.health - 5
		instance_create_depth(0,0, -9999, objFade);
		}
		else {
			 Menu(x,y,[["You do not have sufficent resources", -1]])
		}
	
}

function stage1red_door1(){
	if ((obj_resource_display.elixircurrency > 15) && (obj_resource_display.energycurrency > 10)){
		obj_resource_display.elixircurrency = obj_resource_display.elixircurrency - 10
		obj_resource_display.energycurrency = obj_resource_display.energycurrency - 10
		
		spawn_x = 5100;
		spawn_y = 100;
		global.health = global.health -  5
		oPlayer.x = spawn_x; // Directly update oPlayer's x
		oPlayer.y = spawn_y; // Directly update oPlayer's y
		instance_create_depth(0,0, -9999, objFade);
		}
		else {
			Menu(x,y,[["You do not have sufficent resources", -1]])
			
		}
}

function stage1red_door2(){
	if ((obj_resource_display.resourcecurrency > 15) && (obj_resource_display.elixircurrency > 5) || (obj_resource_display.energycurrency > 5)){
		obj_resource_display.elixircurrency = obj_resource_display.elixircurrency - 5
		obj_resource_display.energycurrency = obj_resource_display.energycurrency - 5
		obj_resource_display.resourcecurrency = obj_resource_display.resourcecurrency - 15
		
		spawn_x = 4500;
		spawn_y = 240;
		global.health = global.health - 20
		oPlayer.x = spawn_x; // Directly update oPlayer's x
		oPlayer.y = spawn_y; // Directly update oPlayer's y
		instance_create_depth(0,0, -9999, objFade);
		}
		else {
			Menu(x,y,[["You do not have sufficent resources", -1]])
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
		
		room_goto(rkeyWater);
		instance_create_depth(0,0, -9999, objFade);
		
		
		}
		else {
			 Menu(x,y,[["You do not have sufficent resources", -1]])
		}
	
}

function stage2two(){
	// Trade Offs
	if ((obj_resource_display.elixircurrency > 15) && (obj_resource_display.energycurrency > 5)){
		obj_resource_display.elixircurrency = obj_resource_display.elixircurrency - 15
		obj_resource_display.energycurrency = obj_resource_display.energycurrency - 5
		
		room_goto(rkeyElixir);
		instance_create_depth(0,0, -9999, objFade);

		}
		else {
			Menu(x,y,[["You do not have sufficent resources", -1]])
		}
}

function stage2three (){
	
	spawn_x = 7100;
	spawn_y = 250;
	oPlayer.x = spawn_x; // Directly update oPlayer's x
	oPlayer.y = spawn_y;
	instance_create_depth(0,0, -9999, objFade);
}


function stage2four(){
	
	spawn_x = 5100;
	spawn_y = 300;
	oPlayer.x = spawn_x; // Directly update oPlayer's x
	oPlayer.y = spawn_y; // Directly update oPlayer's y
	instance_create_depth(0,0, -9999, objFade);
}

function stage2five(){
	spawn_x = 7100;
	spawn_y = 250;
	oPlayer.x = spawn_x; // Directly update oPlayer's x
	oPlayer.y = spawn_y; // Directly update oPlayer's y
	instance_create_depth(0,0, -9999, objFade);
}

#endregion

#region Prompt3
function stage3correct(){
	global.health += 10;
	global.health = clamp(global.health, 0, 100)
	
	spawn_x = 10500;
	spawn_y = 250;
	
	oPlayer.x = spawn_x; // Directly update oPlayer's x
	oPlayer.y = spawn_y;
	instance_create_depth(0,0, -9999, objFade);
}



function stage3wrong(){
	global.health -= 5;
	Menu(x,y,[["Incorrect Try Again", -1]])
}



function stage3skip(){
	if (obj_resource_display.elixircurrency > 15){
		obj_resource_display.elixircurrency = obj_resource_display.elixircurrency - 15;
		
		spawn_x = 10500;
		spawn_y = 250;
		
		oPlayer.x = spawn_x; // Directly update oPlayer's x
		oPlayer.y = spawn_y;
		instance_create_depth(0,0, -9999, objFade);
	}
}



#endregion



#region Prompt4
function stage4wrong(){
	obj_resource_display.resourcecurrency = obj_resource_display.resourcecurrency -5;
	obj_resource_display.resourcecurrency = max(obj_resource_display.resourcecurrency, 0);
	obj_resource_display.energycurrency = obj_resource_display.energycurrency - 10;
	obj_resource_display.energycurrency= max(obj_resource_display.energycurrency, 0);
	global.health -= 10;
	Menu(x,y,[["Wrong Answer Try again", -1]])

	
	
	
}
function stage4correct(){
	obj_resource_display.resourcecurrency = obj_resource_display.resourcecurrency +10;
	obj_resource_display.energycurrency = obj_resource_display.energycurrency +10;
	obj_resource_display.elixircurrency = obj_resource_display.elixircurrency +10;
	spawn_x = 15500;
	spawn_y = 250;
	
	oPlayer.x = spawn_x; // Directly update oPlayer's x
	oPlayer.y = spawn_y;
	instance_create_depth(0,0, -9999, objFade);
	
	
	
}


function stage4ignore(){
	obj_resource_display.resourcecurrency = obj_resource_display.resourcecurrency +10;
	obj_resource_display.energycurrency = obj_resource_display.energycurrency +10;
	obj_resource_display.elixircurrency = obj_resource_display.elixircurrency +10;
	Menu(x,y,[["Wrong Answer Try again", -1]])
	instance_create_depth(0,0, -9999, objFade);
	spawn_x = 15500;
	spawn_y = 250;
	
	oPlayer.x = spawn_x; // Directly update oPlayer's x
	oPlayer.y = spawn_y;
	instance_create_depth(0,0, -9999, objFade);
	
	
	
}


#endregion