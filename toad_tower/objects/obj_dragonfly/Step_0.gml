if (rider != noone) {
    rider.x = x; // follow dragonfly's position
    rider.y = y - 16; // place player on top (adjust offset as needed)
    rider.ride_time += 1;
    
    if (rider.ride_time >= ride_duration) {
        rider.is_riding = false;
        rider = noone;
        instance_destroy(); // destroy the dragonfly
    }
}
if (rider != noone) {
    // Move dragonfly with arrow keys
    if (keyboard_check(vk_left)) x -= speed;
    if (keyboard_check(vk_right)) x += speed;
    if (keyboard_check(vk_up)) y -= speed;
    if (keyboard_check(vk_down)) y += speed;

    // Stick the player to the top center of the dragonfly
    rider.x = x;
    rider.y = y - sprite_height / 2 - rider.sprite_height / 2;

    // Riding time
    rider.ride_time += 1;
    if (rider.ride_time >= ride_duration) {
        rider.is_riding = false;
        rider = noone;
        instance_destroy(); // dragonfly disappears
    }
}
