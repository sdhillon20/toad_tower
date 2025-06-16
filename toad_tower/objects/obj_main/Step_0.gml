// ##################### CONTROLS #####################
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);  // Determine left or right movement
move_x *= move_speed;

jump_pressed = keyboard_check_pressed(vk_space);  // Check if jumping


// ##################### CHECK FOR COLLISIONS #####################
// Check if standing on ground
is_grounded = place_meeting(x, y+2, ground_object);
is_ceiling = place_meeting(x, y-2, ground_object);







// Jumping
	if (is_grounded) {
		move_y = 0;  // Get rid of gravity which presses object into the ground (too much friction which prevents horizontal movement)
		if (jump_pressed) {
			move_y = jump_speed;  // Jump
		}
	}
	
// Falling
	else if (!is_grounded && move_y < max_fall_speed) {  // Only allow gravity if not on the ground and if below max fall speed
		move_y += gravity_force;
	}



// ##################### ACTUALLY MOVE THE PLAYER OBJECT #####################
move_and_collide(move_x, move_y, ground_object);  // Move the object


// ##################### AVOID STICKING TO THE SIDES AND BOTTOM OF PLATFORMS #####################
if (place_meeting(x+2, 0, ground_object)) {  // If hitting platform to the right, move back to the left
	move_x -= 2;  // Increase value for bigger bounce
}
else if (place_meeting(x-2, 0, ground_object)) { // If hitting platform to the left, move back to the right
	move_x += 2; // Increase value for bigger bounce
}
else if (is_ceiling) { // If hitting ceiling (platform above), move back down
	move_y = 10; // Increase value for bigger bounce
}


// Only increase score every 16 pixels upward
if (y < highest_y - 16) {
    highest_y -= 16;  // move the threshold up by 16
    score += 1;
}

// Move left
if (keyboard_check(vk_left)) {
    x -= 4;
    sprite_index = spr_main_left;
}

// Move right
else if (keyboard_check(vk_right)) {
    x += 4;
    sprite_index = spr_main;
}


vspeed += 0.5; // Gravity
y += vspeed;

// Move with left/right keys
if (keyboard_check(vk_left))  x -= move_speed;
if (keyboard_check(vk_right)) x += move_speed;


if (score > highscore) {
    highscore = score;
}

// Then go to game over room

