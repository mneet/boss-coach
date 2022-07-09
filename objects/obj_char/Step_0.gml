/// @description Insert description here
// You can write your code in this editor

// State machine

switch(mystate)
{
	case mstate.idle:
			iddle();
	break;
	
	case mstate.attacking:
			attack();
	break;
	
	case mstate.healing:
			heal();
	break;
	
	case mstate.knocked:
			knockdown();
	break;
	
	case mstate.hitt:
			hit();
	break;
}



//Debug
if (keyboard_check_pressed(vk_space)) mystate = mstate.attacking;
if (keyboard_check_pressed(ord("1"))) mystate = mstate.healing;
if (keyboard_check_pressed(ord("2"))) mystate = mstate.knocked;
if (keyboard_check_pressed(ord("3"))) mystate = mstate.hitt;