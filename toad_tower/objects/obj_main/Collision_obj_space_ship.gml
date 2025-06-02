// Hide the player
visible = false;
global.inSpaceship = true;

// Move player to the spaceship so it disappears from the scene
x = other.x;
y = other.y;

visible = false;
global.inSpaceship = true;
other.entry_time = current_time; // Save the time of entry
entry_time = current_time;
