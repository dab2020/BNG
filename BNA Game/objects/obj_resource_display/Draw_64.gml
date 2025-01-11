
   // Draw the currency icon
   draw_sprite(sResource, 0, x+950, y-495);

   // Draw the currency amount as text
   draw_set_halign(fa_left); // Align text to the left
   draw_set_valign(fa_middle); // Align text vertically
   draw_text(x+990, y-481, string(resourcecurrency));
   
   
   
   // Draw the currency icon
   draw_sprite(sEnergy, 0, x+950, y-455);

   // Draw the currency amount as text
   draw_set_halign(fa_left); // Align text to the left
   draw_set_valign(fa_middle); // Align text vertically
   draw_text(x+990, y-441, string(energycurrency));
   
   
      // Draw the currency icon
   draw_sprite(sElixir, 0, x+850, y-495);

   // Draw the currency amount as text
   draw_set_halign(fa_left); // Align text to the left
   draw_set_valign(fa_middle); // Align text vertically
   draw_text(x+890, y-481, string(elixircurrency));

