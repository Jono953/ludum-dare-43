if instance_exists(oInteractable){
if ref = instance_nearest(x,y,oInteractable).ref{
x = instance_nearest(x,y,oInteractable).x-image_xscale/2
y = instance_nearest(x,y,oInteractable).y-image_xscale/2
}
}else{
instance_destroy()	
}
depth = 15