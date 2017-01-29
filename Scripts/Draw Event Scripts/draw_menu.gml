draw_set_halign(fa_left); //alignment options
draw_set_valign(fa_middle);
draw_set_font(fnt_options);
draw_set_color(c_green);

var m;
for (m = 0; m < array_length_1d(menu); m += 1) //while m is less than the length of the menu array
{
  draw_text(x + space, y + (m * space), string(menu[m])); //draw menu options to screen
}

//drawing the arrow

draw_sprite(sprite_index, 0, x + 16, y + mpos * space);
