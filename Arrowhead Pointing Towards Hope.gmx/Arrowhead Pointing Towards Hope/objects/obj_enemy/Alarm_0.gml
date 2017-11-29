//Vector variables
var vector2_x = 0;
var vector2_y = 1;

dir *= -1; //Switch directions once alarm goes off.
velocity_[vector2_x] = clamp(velocity_[vector2_x] + (acceleration_ * dir), -max_velocity_[vector2_x], max_velocity_[vector2_x]); 