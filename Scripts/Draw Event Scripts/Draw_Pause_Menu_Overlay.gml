if (global.pause)
{
  draw_set_color(c_black);
  draw_set_alpha(0.5);
  draw_rectangle(0,0, room_width, room_height, 0); //Fix this later to match view coordinates
  draw_set_halign(fa_center);
  draw_set_font(fnt_menu);
  draw_set_color(c_green);
  draw_set_alpha(1);
  draw_text(room_width / 2, room_height / 2, "Adventure suspended (for now...)");
  draw_set_color(c_black);
}
