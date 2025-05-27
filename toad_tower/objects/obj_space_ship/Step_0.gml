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

// Move left
if (keyboard_check(vk_up)) {
    x -= 4;
    sprite_index = spr_space_ship_left;
}

// Move right
else if (keyboard_check(vk_down)) {
    x += 4;
    sprite_index = spr_space_ship_right;
}


