draw_set_font(fGame)
draw_healthbar(50,38,540,58,(hp/mhp)*100,c_red,c_green,c_lime,0,true,true)
draw_healthbar(50,58,480,78,focus,c_red,c_purple,c_blue,0,true,true)
draw_set_font(fFiner)
draw_text_color(50,38,"HP: "+string(hp)+"/"+string(mhp),c_black,c_black,c_black,c_black,1)
draw_text_color(50,58,"FOCUS: "+string(focus)+"%",c_white,c_white,c_white,c_white,1)
draw_set_font(fGame)
for(i=0;i<6;i++){
draw_sprite_ext(sFlowers,i,(i*80)+84,114,0.5,0.5,0,c_white,0.5)
if i=4{
draw_text_color((i*80)+70,125,string(fc[i]),c_black,c_black,c_black,c_black,0.5)
}else{
draw_text_color((i*80)+70,125,string(fc[i]),c_white,c_white,c_white,c_white,0.5)
}
}
for(i=0;i<ds_list_size(potions);i++){
if type[ds_list_find_value(potions,i)] = 0{
draw_sprite(sPotion,0,i*80+64,1080-110)
draw_sprite_ext(sPotion,1,i*80+64,1080-110,1,1,0,colors[ds_list_find_value(potions,i)],1)
}
if type[ds_list_find_value(potions,i)] = 1{
draw_sprite(sScroll,0,i*80+64,1080-110)
draw_sprite_ext(sScroll,1,i*80+64,1080-110,1,1,0,colors[ds_list_find_value(potions,i)],1)
}
if type[ds_list_find_value(potions,i)] = 2{
draw_sprite(sRune,0,i*80+64,1080-110)
draw_sprite_ext(sRune,1,i*80+64,1080-110,1,1,0,colors[ds_list_find_value(potions,i)],1)
}
}
draw_set_font(fFine)
draw_text(0,1080-250,"HP: "+string(hp)+"/"+string(mhp))
draw_text(0,1080-280,"Focus: "+string(focus)+"%")
draw_text(0,1080-310,"player zx,zy "+string(oPlayer.zx)+","+string(oPlayer.zy))
draw_text(0,1080-340,"camera zx,zy "+string(oCamera.zx)+","+string(oCamera.zy))

draw_set_font(fGame)
draw_sprite(sSelector,0,selector*80,1080-192)