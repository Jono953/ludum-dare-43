time -= 1
image_alpha = time/150
if time <= 0{
	with oHitbox{
	if ref = "fireTornado"{
	instance_destroy()	
	}
	}
	instance_destroy()
}