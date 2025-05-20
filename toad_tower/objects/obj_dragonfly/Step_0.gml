// Move upward
y -= speed;

// If frog is riding, move frog with the dragonfly
if (riding && instance_exists(obj_main)) {
    if (place_meeting(x, y - 1, obj_main)) {
        obj_main.y = y - sprite_height / 2 - obj_main.sprite_height / 2;
    } else {
        riding = false; // Frog jumped off
    }
}



