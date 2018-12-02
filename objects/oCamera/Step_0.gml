zx = int64(oPlayer.x/1920)
zy = int64(oPlayer.y/1080)
if x != zx*1920+960{
x = approach(x,zx*1920+960,64)
}
if y != zy*1080+540{
y = approach(y,zy*1080+540,64)
}

vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
camera_set_view_mat(camera,vm)


