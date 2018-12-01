if selector > ds_list_size(potions)-1{
	selector = 0	
}

if selector < 0{
selector = ds_list_size(potions)-1
}
x = oPlayer.x
y = oPlayer.y

if focus < 100{
if oPlayer.vsp = 0 and oPlayer.hsp = 0{
focus += 0.04
}else{
focus += 0.01
}
}else{
focus = 100	
}
if focus < 0{
focus = 0	
}