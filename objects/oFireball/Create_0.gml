move_towards_point(mouse_x,mouse_y,32)
image_angle = point_direction(x,y,mouse_x,mouse_y)
ref = "fire" + string(id)
with instance_create_depth(x,y,5,oHitbox){
image_xscale = 130
image_yscale = 177
ref = "fire" + string(instance_nearest(x,y,oFireball).id)
damage2 = irandom_range(15,20)
damageType = "fire"
}