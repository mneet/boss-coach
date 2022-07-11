/// @description Insert description here
// You can write your code in this editor


if (started) timer--;

if (hp <= 0)
{
	if(instance_exists(obj_enemy))
	{
		obj_enemy.mystate = "attacking";		
	}
	global.turno = false;
	instance_destroy();
}
else if(timer<=0)
{
	if(instance_exists(obj_char))
	{
		obj_char.mystate =  "attacking";		
	}
	global.turno = false;
	instance_destroy();
}



