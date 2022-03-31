/// @desc equip gun
global.hasgun = true;
instance_create_layer(Oplayer.x,Oplayer.y,"gun",Ogun);
instance_destroy();