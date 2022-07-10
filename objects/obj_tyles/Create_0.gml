/// @description Insert description here
// You can write your code in this editor

key_list = ds_list_create();
totaltimer = room_speed * 3;
timer = totaltimer;
totalerror = 0;
keynum = 10;


		
// Adicionando teclas a lista
var i;
for (i=0;i<keynum;i+=1)
{
	ds_list_add(key_list, choose("Q","W","E","R","J","K","L"));	
}	



play = function()
{
	timer--;
	if (keyboard_check_pressed(ord("Q") || ord("W") || ord("E") || ord("R") || ord("J") || ord("K") || ord("L") ))
	{
		//checando a tecla
		if (keyboard_check_pressed(ord(ds_list_find_value(key_list,0))))
		{
			ds_list_delete(key_list,0);		
		}
		else
		{
			ds_list_delete(key_list,0);
			totalerror += 1;
			instance_create_layer(x,y,layer,obj_screenshake);
		}		
	}
		
	if (ds_list_empty(key_list) || timer <= 0)
	{		
		if (totalerror < keynum/2 && timer > 0)
		{
			obj_bob.dano -= totalerror;
			obj_bob.mystate = "attacking";	
		}
		else if (instance_exists(obj_enemy))
		{
			obj_enemy.mystate = "attacking";	
		}
		instance_destroy();
		
	}



}