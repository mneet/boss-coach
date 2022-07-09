/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

spr_idle		= spr_hero_idle;
spr_attack		= spr_hero_attack;
spr_knockdown	= spr_hero_death;
spr_heal		= spr_hero_block;
spr_hit			= spr_hero_hit;


knockdown = function()
{
	if (sprite_index != spr_knockdown) image_index = 0;
	sprite_index = spr_knockdown;
	if (image_index > image_number -1) image_speed = 0;
}