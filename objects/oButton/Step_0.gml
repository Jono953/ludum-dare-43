
zx = int64(x/1920)
zy = int64(y/1080)

if zx != oPlayer.zx or zy != oPlayer.zy{
instance_destroy()	
}
depth = -9999
if type < 6{
image_xscale = 0.5
image_yscale = 0.5
sprite_index = sFlowers
image_index = type
}
if !did{
	if type < 6{
x += 64
y += 64
}
did = true	
}