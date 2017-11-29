/// @desc Setup camera

camera = view_camera[0];
follow = obj_player;
view_w_half = camera_get_view_width(camera) * 0.5;
view_h_half = camera_get_view_height(camera) * 0.5;
xTo = xstart;
yTo = ystart;