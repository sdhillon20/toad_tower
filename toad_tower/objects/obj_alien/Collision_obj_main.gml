if (!other.invincible) {
    with (other) {
        instance_destroy();  // destroy frog
    }
}

instance_destroy(); // destroy player
    room_goto(gameover); // go to Game Over screen

