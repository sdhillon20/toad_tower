y += vspd;

if (y > room_height + 100) {
    instance_destroy(); // destroy if off screen
}

if (random(100) < 1) { // 1% chance every step
    direction = random(360);
    speed = random_range(2, 6);
}

// If meteor goes outside the room
if (x < -32 || x > room_width + 32 || y < -32 || y > room_height + 32) {
    // Reset position somewhere at the top
    x = random(room_width);
    y = -32;

    // New random direction downwards-ish
    direction = random_range(200, 340); // mostly downward
    speed = random_range(2, 6);
}



