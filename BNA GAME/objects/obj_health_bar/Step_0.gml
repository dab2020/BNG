// Ensure health stays within 0 to 100
if (health > 100) health = 100; 
if (health < 0) health = 0;

// Map health (0-100) to sub-image index (0-10)
sprite_index = sHealth; // Assign your sprite here
image_index = round(health / 10); 
