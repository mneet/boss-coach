/// @description Insert description here
// You can write your code in this editor

draw_self();

var _vida = (hp_atual / max_hp) * 100;
//Desenhando a barra de hp do boss
draw_healthbar(x - sprite_width / 2.5, y - sprite_height/3 , x + sprite_width / 6, y - (sprite_height/3 + 10), _vida, c_black, c_red, c_green, 0, true, 1);