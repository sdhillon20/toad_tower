if (global.inSpaceship) 
// Move left
if (keyboard_check(vk_left)) {
    x -= 4;
    sprite_index = spr_space_ship_left;
}
// Move right
else if (keyboard_check(vk_right)) {
    x += 4;
    sprite_index = spr_space_ship_right;
}

// Move up
if (keyboard_check(vk_up)) {
    y -= 4;
    sprite_index = spr_space_ship_left; // or a "up" sprite if you have one
}
// Move down
else if (keyboard_check(vk_down)) {
    y += 4;
    sprite_index = spr_space_ship_right; // or a "down" sprite if you have one
}

if (global.inSpaceship) {
    // Movement controls only active when inside spaceship
    if (keyboard_check(vk_left))  x -= 4;
    if (keyboard_check(vk_right)) x += 4;
    if (keyboard_check(vk_up))    y -= 4;
    if (keyboard_check(vk_down))  y += 4;
}
