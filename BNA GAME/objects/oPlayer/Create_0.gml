// momentum-based system made by Dayyan Abdullah @dab2020
hsp =0;
vsp = 0;
grav = 0.5;
accel = 0.5; // accleration
decel = 0.3; // deceleration

// speeds
max_hsp = 5; // max horizontal speed
grav_max = 12;
groundbuffer = 12;
jumpheight = -12;
jumpbuffer = 10; 
grav_wall = 0.01;
grav_max_wall =  5;

lay_id = layer_get_id("TileLayer");
my_tilemap = layer_tilemap_get_id(lay_id);

lay_id2 = layer_get_id("TileLayer2");
my_tilemap1 = layer_tilemap_get_id(lay_id2);


jumpheight_min = -3;
wallJumpDistance = 7;
jumpheight_Wall = -9;
