/// @description Insert description here
// You can write your code in this editor





if (keyboard_check_pressed(vk_space) && timer > 0)
{
	if (!start) 
	{
		start = true;			
	}
	force += click;	
}


if (start && timer > 0) 
{
	force -= tforce;
	timer--;
}


if (timer <= 0 && force > 0)
{
	obj_char.mystate = "attacking";
	instance_destroy();		
}

if (force <= 0) 
{
	instance_destroy();	
}

show_debug_message(timer);