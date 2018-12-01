zx = 0;
zy = 0;
view_camera[0] = camera_create();
vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
pm = matrix_build_projection_ortho(1920,1080,1,32000)
camera_set_view_mat(view_camera[0],vm)
camera_set_proj_mat(view_camera[0],pm)
