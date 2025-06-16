var moving = false;

if (keyboard_check(vk_left)) {
    x -= move_speed;
    moving = true;
}
if (keyboard_check(vk_right)) {
    x += move_speed;
    moving = true;
}
if (keyboard_check(vk_up)) {
    y -= move_speed;
    moving = true;
}
if (keyboard_check(vk_down)) {
    y += move_speed;
    moving = true;
}

// Change sprite based on movement
if (moving) {
    sprite_index = spr_main29;
} else {
    sprite_index = spr_main;
}
