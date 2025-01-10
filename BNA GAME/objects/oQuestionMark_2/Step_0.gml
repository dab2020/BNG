// Check distance to player
var player = instance_nearest(x, y, oPlayer);
if (player != noone) {
    if (point_distance(x, y, player.x, player.y) < 64) { // Adjust the distance threshold as needed
        tutorial_visible = true;
    } else {
        tutorial_visible = false;
    }
} else {
    tutorial_visible = false;
}

// Adjust alpha for fade effect
if (tutorial_visible) {
    alpha = min(alpha + fade_speed, 1); // Fade in
} else {
    alpha = max(alpha - fade_speed, 0); // Fade out
}
