// Ensure health stays within 0 to 100
if (global.health > 100) global.health = 100; 
if (health < 0) global.health = 0;

// Map health (0-100) to sub-image index (0-10)
sprite_index = sHealth; // Assign your sprite here
image_index = round(global.health / 10); 



