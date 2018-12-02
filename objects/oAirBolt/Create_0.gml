move_towards_point(mouse_x,mouse_y,32)
image_angle = point_direction(x,y,mouse_x,mouse_y)
ref = "air" + string(id)
with instance_create_depth(x,y,5,oHitbox){
image_xscale = 150
image_yscale = 61
ref = "air" + string(instance_nearest(x,y,oAirBolt).id)
damage2 = irandom_range(10,15)
damageType = "air"
}