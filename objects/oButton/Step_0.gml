image_index = type
zx = int64(x/1920)
zy = int64(y/1080)

if zx != oPlayer.zx or zy != oPlayer.zy{
instance_destroy()	
}
depth = -9999