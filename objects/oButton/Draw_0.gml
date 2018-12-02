draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_center)
if type = 0{	
draw_text(x+64,y+32,"Air")
}
if type = 1{	
draw_text(x+64,y+32,"Water")
}
if type = 2{	
draw_text(x+64,y+32,"Earth")
}
if type = 3{	
draw_text(x+64,y+32,"Fire")
}
if type = 4{	
draw_text(x+64,y+32,"Light")
}
if type = 5{	
draw_text(x+64,y+32,"Dark")
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


draw_set_halign(fa_left)
draw_set_valign(fa_left)
if type = 8 and oCrafting.slot3 != -1{
draw_text(x,y+80,"COST: "+string(oGame.cost[oCrafting.slot3]))
}