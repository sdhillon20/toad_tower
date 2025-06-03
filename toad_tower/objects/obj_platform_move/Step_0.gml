x += hspd;

if (x > x_start + distance || x < x_start - distance) {
    hspd = -hspd; // reverse direction when reaching limits
}
// Save how much the platform moved this frame
var dx = hspd;

// Move player if standing on the platform
with (obj_main) {
    // Check if player is on top of this platform
    if (place_meeting(x, y + 1, other)) {
        x += dx;
    }
}
