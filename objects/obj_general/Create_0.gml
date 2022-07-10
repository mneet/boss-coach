/// @description Insert description here
// You can write your code in this editor

key_list = ds_list_create();
totaltime = 0;
totalerror = 0;
keynum = 10;


// Set deltatime for time
deltatime = 0;

// Shuffle
// Limpando lista
ds_list_clear(key_list);
totaltime = 0;
totalerror = 0;
		
// Adicionando teclas a lista
var i;
for (i=0;i<keynum;i+=1)
{
	ds_list_add(key_list, choose("Q","W","E","R","J","K","L"));	
}	



play = function()
{
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
		}		
	}
		
	if (ds_list_empty(key_list))
	{		
		if (totalerror < keynum/2)
		{
			obj_bob.dano -= totalerror;
			obj_bob.mystate = "attacking";	
		}
		else
		{
			obj_enemy.mystate = "attacking";	
		}
		instance_destroy();
		
	}



}