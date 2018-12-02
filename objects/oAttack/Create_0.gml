move_towards_point(mouse_x,mouse_y,32)
image_angle = point_direction(x,y,mouse_x,mouse_y)
if oPlayer.fireAtk > 0{
	image_index = 1
}
if oPlayer.lightAtk > 0{
	image_index = 2
}
if oPlayer.darkAtk > 0{
	image_index = 3
}
ref = "bullet" + string(id)
with instance_create_depth(x,y,5,oHitbox){
image_xscale = 32
image_yscale = 32
ref = "bullet" + string(instance_nearest(x,y,oAttack).id)
damage2 = irandom_range(8,12)
if oPlayer.fireAtk > 0{
	damageType = "fire"
}
if oPlayer.lightAtk > 0{
	damageType = "light"
}
if oPlayer.darkAtk > 0{
	damageType = "dark"
}
}