if (weapon == "tongue") {
    var tx = x + image_xscale * 16;
    var ty = y;
    instance_create_layer(tx, ty, "Bullets", obj_tongue);
    audio_play_sound(snd_tongue_launch, 1, false);

    sprite_index = spr_main_attack;
    image_index = 0;
    image_speed = 1;
}



