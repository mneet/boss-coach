/// @description Insert description here
// You can write your code in this editor


//Se destruindo
instance_destroy(id, false);
if (instance_exists(obj_alvocontroler)) obj_alvocontroler.hp--;
instance_create_layer(x,y,layer,obj_screenshake);