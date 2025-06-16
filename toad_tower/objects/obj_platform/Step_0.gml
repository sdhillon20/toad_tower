if (flashing) {
    // Flash effect
    if (flash_timer > 0) {
        flash_timer -= 1;
        visible = !visible; // toggle visibility
    }

    // Start countdown to disappear
    if (disappear_timer > 0) {
        disappear_timer -= 1;
    } else {
        instance_destroy(); // remove platform
    }
}


