
x += hspd;

if (x > startX + range || x < startX - range) {
    hspd *= -1; // reverse direction
}

// Only trigger jump if the frog is falling
if (vspeed > 0) {
    vspeed = -15; // BIG jump! Adjust value as needed
}

