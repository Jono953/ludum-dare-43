if time <= 0{
effect_create_above(ef_explosion,x,y,2,c_red)
instance_destroy()
if distance_to_object(oPlayer) < 256{
with oGame{
damage(irandom_range(20,30))	
}
}
}
time--