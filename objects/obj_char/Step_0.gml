/// @description Insert description here
// You can write your code in this editor

// State machine

switch(mystate)
{
	case "idle":
			iddle();
	break;
	
	case "attacking":
			attack();
	break;
	
	case "healing":
			heal();
	break;
	
	case "knocked":
			knockdown();
	break;
	
	case "hitt":
			hit();
	break;
	
	case "walking":
			walk();
	break;
	
}



//Debug
if (keyboard_check_pressed(vk_space)) mystate = "attacking";
if (keyboard_check_pressed(ord("1"))) instance_create_layer(x, y, layer, obj_spam);
if (keyboard_check_pressed(ord("2"))) instance_create_layer(x, y, layer, obj_tyles);
if (keyboard_check_pressed(ord("3"))) mystate = "hitt";
if (keyboard_check_pressed(ord("4"))) mystate = "walking";