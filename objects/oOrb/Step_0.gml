if irandom(100) > 90{
effect_create_above(ef_flare,x+random_range(-sprite_width/2,sprite_width/2),y+random_range(-sprite_height/2,sprite_height/2),1,c_yellow)	
}
if place_meeting(x,y,oWall){
instance_destroy()	
}
depth = -y