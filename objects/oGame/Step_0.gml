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
focus += 0.5
}else{
focus += 0.01
}
}else{
focus = 100	
}
if focus < 0{
focus = 0	
}
if keyboard_check_pressed(ord("Q")){
	if !instance_exists(oCrafting){
	instance_create_depth(oCamera.zx*1920+264,oCamera.zy*1080+200,10,oCrafting)
	}else{
	instance_destroy(oCrafting)
	instance_destroy(oButton)
	}
}
if hp > mhp{
hp = mhp	
}

for(i=0;i<=5;i++){
if fc[i] > 99{
	fc[i] = 99	
}
}
if hp <= 0{
room_goto(rDead)	
}
if oPlayer.zy = 0{
music(penbox56)	
}else{
music(penbox57_2)	
}