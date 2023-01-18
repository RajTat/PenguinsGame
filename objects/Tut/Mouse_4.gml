/// @description Insert description here
// You can write your code in this editor

instance_create_depth(352,64,1,TwoIcon);
with (TwoIcon) {image_xscale *= .75; image_yscale *= .75;}
instance_create_depth(64,224,1,ThreeIcon);
with (ThreeIcon) {image_xscale *= .75; image_yscale *= .75;}
instance_create_depth(640,192,1,FourIcon);
with (FourIcon) {image_xscale *= .75; image_yscale *= .75;}
instance_create_depth(494,448,1,question);
with (question) {image_xscale *= .25; image_yscale *= .25;}
instance_destroy(Tut);
