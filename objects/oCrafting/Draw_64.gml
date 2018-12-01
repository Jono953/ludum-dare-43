if zx = oCamera.zx and zy = oCamera.zy{
if slot1 != -1{
draw_sprite(sFlowers,slot1,160,140)	
}
if slot2 != -1{
draw_sprite(sFlowers,slot2,480,140)	
}
if slot3 != -1{
if oGame.type[slot3] = 0{
draw_sprite(sPotion,0,800,140)
draw_sprite_ext(sPotion,1,800,140,1,1,0,oGame.colors[slot3],1)
}
if oGame.type[slot3] = 1{
draw_sprite(sScroll,0,800,140)
draw_sprite_ext(sScroll,1,800,140,1,1,0,oGame.colors[slot3],1)
}
if oGame.type[slot3] = 2{
draw_sprite(sRune,0,800,140)
draw_sprite_ext(sRune,1,800,140,1,1,0,oGame.colors[slot3],1)
}
draw_set_font(fFine)
if oGame.type[slot3] = 0{
draw_text(864,260,"Potion of "+oGame.name[slot3])
}
if oGame.type[slot3] = 1{
draw_text(864,260,"Scroll of "+oGame.name[slot3])
}
if oGame.type[slot3] = 2{
draw_text(864,260,"Rune of "+oGame.name[slot3])
}
draw_set_font(fFiner)
draw_text(864,295,oGame.desc[slot3])
draw_set_font(fGame)
}
}