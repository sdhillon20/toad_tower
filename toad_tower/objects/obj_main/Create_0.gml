// Player stats
score = 0;
inventory = ds_list_create();
current_weapon = noone;

// Movement
move_speed = 4;
jump_power = 10;
gravity = 0.5;
vspeed = 0;
on_lilypad = false;

// State
show_tutorial = true;
can_move = false;  // Disabled until tutorial finished

