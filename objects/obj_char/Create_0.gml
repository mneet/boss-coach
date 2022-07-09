/// @description Insert description here
// You can write your code in this editor

// Variáveis sprite
spr_idle		= 0;
spr_attack		= 0;
spr_knockdown	= 0;	
spr_heal		= 0;
spr_hit			= 0;

//Iniciando variáveis
hp = 10;
mp = 5;

enum mstate
{
	idle,
	attacking,
	knocked,
	healing,
	hitt
}

mystate = mstate.idle;

iddle = function()
{
	sprite_index = spr_idle;
	image_speed = 1;
}

attack = function()
{
	image_speed = 1;
	if (sprite_index != spr_attack) image_index = 0;
	sprite_index = spr_attack;
	if (image_index > image_number - 1 && sprite_index = spr_attack) mystate = mstate.idle;
}

heal = function()
{
	image_speed = 1;
	if (sprite_index != spr_heal) image_index = 0;
	sprite_index = spr_heal;
	if (image_index > image_number - 1 && sprite_index = spr_heal) mystate = mstate.idle;
}

knockdown = function()
{
	if (sprite_index != spr_knockdown) image_index = 0;
	sprite_index = spr_knockdown;
}

hit = function()
{
	image_speed = 1;
	if (sprite_index != spr_hit) image_index = 0;
	sprite_index = spr_hit;
	if (image_index > image_number - 1 && sprite_index = spr_hit) mystate = mstate.idle;
}