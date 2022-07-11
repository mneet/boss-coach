/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("G"))) start = true;
if (start) timer--;

if (timer <= 0 && !global.turno)
{
	var _minigame = choose(obj_alvocontroler, obj_tyles, obj_spam);	
	instance_create_layer(x,y,layer,obj_alvocontroler);
	global.turno = true;
	start = false;
	timer = ttimer;
}

show_debug_message(timer); 