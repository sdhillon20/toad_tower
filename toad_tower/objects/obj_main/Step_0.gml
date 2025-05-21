
// ##################### MOVEMENT #####################


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







