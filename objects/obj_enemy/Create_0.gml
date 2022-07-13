/// @description Insert description here
// You can write your code in this editor

// Variáveis sprite
spr_idle		= 0;
spr_attack		= 0;
spr_knockdown	= 0;	
spr_heal		= 0;
spr_hit			= 0;
spr_walk		= 0;


//Iniciando variáveis
max_hp = 0;
hp_atual = max_hp;
mp = 5;
dano = 5;

mystate = "walking";

iddle = function()
{
	hspeed = 0;
	sprite_index = spr_idle;
	image_speed = 1;
}

attack = function()
{
	hspeed = 0;
	image_speed = 1;
	if (sprite_index != spr_attack) image_index = 0;
	sprite_index = spr_attack;
	if (image_index > image_number - 1 && sprite_index = spr_attack) 
	{
		mystate = "idle";
		obj_char.mystate = "hitt";
		obj_char.hp_atual -= dano;
		show_debug_message(dano);
	}
}

heal = function()
{
	hspeed = 0;
	image_speed = 1;
	if (sprite_index != spr_heal) image_index = 0;
	sprite_index = spr_heal;
	if (image_index > image_number - 1 && sprite_index = spr_heal) mystate = "idle";
}

knockdown = function()
{
	hspeed = 0;
	if (sprite_index != spr_knockdown) image_index = 0;
	sprite_index = spr_knockdown;
	if (image_index > image_number -1 && sprite_index = spr_knockdown) 
	{
		image_alpha *= 0.95;
		image_speed = 0;
	}
	if (image_alpha <= 0) instance_destroy();
}

hit = function()
{
	hspeed = 0;
	image_speed = 1;
	if (sprite_index != spr_hit) image_index = 0;
	sprite_index = spr_hit;
	if (image_index > image_number - 1 && sprite_index = spr_hit && hp_atual > 0) mystate = "idle";
	if(hp_atual <= 0) mystate = "knocked";
}

walk = function()
{
	image_speed = 1;
	if (sprite_index != spr_walk) image_index = 0;
	sprite_index = spr_walk;
	
	if (x < 500) hspeed = 2;
	else
	{
		hspeed = 0;
		mystate = "idle";
	}
}