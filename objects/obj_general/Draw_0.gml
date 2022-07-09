/// @description Insert description here
// You can write your code in this editor


var i;
var n = 9 - ds_list_size(key_list);
for (i=0;i<ds_list_size(key_list);i++)
{
	letter_spr = asset_get_index("spr_"+ds_list_find_value(key_list,i));
	draw_sprite(letter_spr,0, 65+65*i, 100);
}