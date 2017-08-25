camera = camera_create(); //Creates a blank camera that we can assign properties to.
//Cameras are how the game will be viewed in GMS2

var vm = matrix_build_lookat(x, y, -5, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(1280, 720, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera;

follow = obj_player;

xTo = x;
yTo = y;