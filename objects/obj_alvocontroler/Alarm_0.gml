/// @description Insert description here
// You can write your code in this editor

if(!started)started = true;

var xx = irandom_range(64, room_width - 64);
var yy = irandom_range(64, room_height -64);

instance_create_layer(xx, yy, "Alvos", obj_alvo);


//Reiniciando alarme
alarm[0] = room_speed * spawner_speed;

//Aumentando a velocidade do spawner
spawner_speed *= .9;

