draw_shadow()
if fireTime > 0{
	draw_sprite(Firebackground,0,x,y)	
}
if slowTime > 0{
	draw_sprite(Slowdown,0,x,y)
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,image_blend,image_alpha)