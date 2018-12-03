if zx = oCamera.zx and zy = oCamera.zy{
if slot1 != -1{
draw_sprite(sFlowers,slot1,960-300+64,180)	
}
if slot2 != -1{
draw_sprite(sFlowers,slot2,960+300-128+64,180)	
}
if slot3 != -1{
if oGame.type[slot3] = 0{
draw_sprite(sPotion,0,896+64,140+64)
draw_sprite_ext(sPotion,1,896+64,140+64,1,1,0,oGame.colors[slot3],1)
}
if oGame.type[slot3] = 1{
draw_sprite(sScroll,0,896+64,140+64)
draw_sprite_ext(sScroll,1,896+64,140+64,1,1,0,oGame.colors[slot3],1)
}
if oGame.type[slot3] = 2{
draw_sprite(sRune,0,896+64,140+64)
draw_sprite_ext(sRune,1,896+64,140+64,1,1,0,oGame.colors[slot3],1)
}
draw_set_font(fFine)
draw_set_halign(fa_center)

if oGame.type[slot3] = 0{
draw_text(896+64,330,"Potion of "+oGame.name[slot3])
}
if oGame.type[slot3] = 1{
draw_text(896+64,330,"Scroll of "+oGame.name[slot3])
}
if oGame.type[slot3] = 2{
draw_text(896+64,330,"Rune of "+oGame.name[slot3])
}
draw_set_font(fFiner)
draw_text(896+64,370,oGame.desc[slot3])
draw_set_halign(fa_left)

draw_set_font(fGame)
}
}