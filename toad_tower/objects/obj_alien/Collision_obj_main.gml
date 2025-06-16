

instance_destroy(); // destroy player
    room_goto(gameover); // go to Game Over screen

// In collision with enemy or hazard
global.final_score = score;
room_goto(gameover);
