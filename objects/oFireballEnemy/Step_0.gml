if place_meeting(x,y,oPlayer) and oPlayer.invun = 0{
	with oGame{
	damage(irandom_range(10,15))
	}
	oPlayer.invun = 30
	oPlayer.fireTime = 60
	effect_create_above(ef_explosion,x,y,2,c_red)
	instance_destroy()
}