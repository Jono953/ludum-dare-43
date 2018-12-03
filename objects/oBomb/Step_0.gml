if time <= 0{
effect_create_above(ef_explosion,x,y,2,c_red)
instance_destroy()
if distance_to_object(oPlayer) < 128{
with oGame{
damage(irandom_range(20,30))	
}
}
}
time--
if place_meeting(x,y,oAttack){
time = 0
}
cr += 255/90
image_blend = make_color_rgb(cr,0,0)
