if instance_exists(oCrafting){
draw_set_halign(fa_center)
draw_set_valign(fa_center)
if type < 6{
draw_sprite_ext(sprite_index,image_index,x,y,0.5,0.5,0,c_white,1)
}else{
draw_self()	
}
if type = 6{	
draw_text(x+64,y+32,"Remove A")
}
if type = 7{	
draw_text(x+64,y+32,"Remove B")
}
if type = 8{	
draw_text(x+64,y+32,"Confirm")
}



if type = 8 and oCrafting.slot3 != -1{
draw_text(x+64,y+96,"HP COST: "+string(oGame.cost[oCrafting.slot3]))
}
draw_set_halign(fa_left)
draw_set_valign(fa_left)
}