if (show_tutorial) {
    can_move = false;
    // Wait for Enter to finish tutorial
    if (keyboard_check_pressed(vk_enter)) {
        show_tutorial = false;
        can_move = true;
    }
    exit; // Don't run rest of code during tutorial
}

if (!can_move) exit;

// Apply gravity if not on lilypad
if (!on_lilypad) {
    vspeed += gravity;
    y += vspeed;
}

// Horizontal movement
if (keyboard_check(vk_left)) {
    x -= move_speed;
    sprite_index = spr_frog_idle;
    image_xscale = -1; // face left
}
else if (keyboard_check(vk_right)) {
    x += move_speed;
    sprite_index = spr_frog_idle;
    image_xscale = 1; // face right
}

// Jump
if (on_lilypad && keyboard_check_pressed(vk_space)) {
    vspeed = -jump_power;
    on_lilypad = false;
    sprite_index = spr_frog_jump;
    image_speed = 0.3;
    audio_play_sound(snd_jump, 1, false);
}

// Check landing on lilypad
var pad = instance_place(x, y + 4, obj_lilypad);
if (pad != noone && vspeed >= 0) {
    y = pad.y - sprite_get_height(sprite_index)/2;
    on_lilypad = true;
    vspeed = 0;
    sprite_index = spr_frog_idle;
    image_speed = 0;
    score += 1; // +1 point for each successful jump/landing
}

// Collide with meteors
if (place_meeting(x, y, obj_meteor)) {
    hp -= 1;
    audio_play_sound(snd_explosion, 1, false);
    if (hp <= 0) {
        show_message("Game Over! Score: " + string(score));
        game_restart();
    }
    else {
        // Knock back frog
        x -= 30 * image_xscale;
        y -= 20;
    }
}

// Collect weapons/powers
var weapon = instance_place(x, y, obj_weapon);
if (weapon != noone) {
    ds_list_add(inventory, weapon.weapon_type);
    current_weapon = weapon.weapon_type; // auto-switch
    weapon.instance_destroy();
    score += 10;
}

// Use weapon (laser)
if (current_weapon == "laser" && mouse_check_button_pressed(mb_left)) {
    var bullet = instance_create_layer(x + image_xscale * 16, y, "Instances", obj_laser_bullet);
    bullet.direction = image_xscale == 1 ? 0 : 180;
    bullet.speed = 12;
    audio_play_sound(snd_laser, 1, false);
}

// Use portal speed boost
if (place_meeting(x, y, obj_portal)) {
    audio_play_sound(snd_portal, 1, false);
    move_speed = 8;
}
else {
    move_speed = 4;
}
