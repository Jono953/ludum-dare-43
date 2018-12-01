draw_set_font(fGame)
for(i=0;i<6;i++){
draw_sprite(sFlowers,i,(i*160),0)
if i=4{
draw_text_color((i*160)+80,96,string(fc[i]),c_black,c_black,c_black,c_black,1)
}else{
draw_text_color((i*160)+80,96,string(fc[i]),c_white,c_white,c_white,c_white,1)
}
}
for(i=0;i<ds_list_size(potions);i++){
if type[ds_list_find_value(potions,i)] = 0{
draw_sprite(sPotion,0,i*80,1080-160)
draw_sprite_ext(sPotion,1,i*80,1080-160,1,1,0,colors[ds_list_find_value(potions,i)],1)
}
if type[ds_list_find_value(potions,i)] = 1{
draw_sprite(sScroll,0,i*80,1080-160)
draw_sprite_ext(sScroll,1,i*80,1080-160,1,1,0,colors[ds_list_find_value(potions,i)],1)
}
if type[ds_list_find_value(potions,i)] = 2{
draw_sprite(sRune,0,i*80,1080-160)
draw_sprite_ext(sRune,1,i*80,1080-160,1,1,0,colors[ds_list_find_value(potions,i)],1)
}
}
draw_set_font(fFine)
draw_text(0,1080-250,"HP: "+string(hp)+"/"+string(mhp))
draw_text(0,1080-280,"Focus: "+string(focus)+"%")
draw_set_font(fGame)
draw_sprite(sSelector,0,selector*80,1080-192)