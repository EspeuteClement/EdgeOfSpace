/// @description Removes cameras

view_enabled		= false
camera_destroy(view_camera[0]);
view_camera[0]		= -1;
view_visible[0]		= false;

show_debug_message("CAMERA END ROOM");

_CameraInit = false;