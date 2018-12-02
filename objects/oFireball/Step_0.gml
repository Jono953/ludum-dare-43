if distance_to_object(oPlayer) > 1000{
instance_destroy()	
}
if irandom(100) > 60{
instance_create_depth(x,y,-10,oParticleFire)	
}