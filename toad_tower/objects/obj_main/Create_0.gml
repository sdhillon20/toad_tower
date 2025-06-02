// ######################## MOVEMENT VARIABLES ########################
move_speed = 5;         // Left/Right speed
jump_speed = -5;         // Upward jump speed
gravity_force = 0.5;      // Gravity strength
max_fall_speed = 10;      // Max downward speed
move_x = 0;				  // Horizontal movement
move_y = 0;			      // Vertical movement

// ######################## STATE VARIABLES ########################
is_grounded = false;      // On ground?


// ######################## OBJECT REFERENCES ########################
ground_object = obj_platform;   // Replace with your ground object's name


score = 0;
highest_y = y;


global.inSpaceship = false;
visible = true;

invincible = false;
invincible_timer = 0;
