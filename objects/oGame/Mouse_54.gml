currentPotion = ds_list_find_value(potions,selector)
if currentPotion = 0{
hp -= 10	
oPlayer.attackTimer = 12
oPlayer.attackType = 0
}
if currentPotion = 1{
	oPlayer.speedUp = 450
	oPlayer.attackTimer = 12
	oPlayer.attackType = 0
}
if currentPotion = 2{
	if !instance_exists(oEarthTornado){
	instance_create_depth(x,y,5,oEarthTornado)
	}else{
	ds_list_add(potions,2)
	}
	oPlayer.attackTimer = 25
	oPlayer.attackType = 1
}
if currentPotion = 3{
	oPlayer.attackTimer = 25
	oPlayer.attackType = 1
	if !instance_exists(oFireTornado){
	instance_create_depth(x,y,5,oFireTornado)
	}else{
	ds_list_add(potions,3)
	}
}
if currentPotion = 4{
	oPlayer.attackTimer = 25
	oPlayer.attackType = 1	
	instance_create_depth(x,y,-10,oAirBolt)
}
if currentPotion = 5{
	oPlayer.attackTimer = 25
	oPlayer.attackType = 1
}
if currentPotion = 6{
	oPlayer.attackTimer = 25
	oPlayer.attackType = 1	
	for(i=0;i<250;i++){
	effect_create_above(ef_ring,x+irandom_range(-1920,1920),y+irandom_range(-1080,1080),3,c_blue)	
	}
	with oEnemy{
	slowTime = 450	
	}
}
if currentPotion = 7{
	if oPlayer.lightAtk = 0 and oPlayer.darkAtk = 0{
	oPlayer.fireAtk = 300
	oPlayer.attackTimer = 12
	oPlayer.attackType = 0
	}else{
	ds_list_add(potions,7)	
	}
}
if currentPotion = 8{
	if oPlayer.fireAtk = 0 and oPlayer.darkAtk = 0{
	oPlayer.lightAtk = 300
	oPlayer.attackTimer = 12
	oPlayer.attackType = 0
	}else{
	ds_list_add(potions,8)	
	}
}
if currentPotion = 9{
	if oPlayer.lightAtk = 0 and oPlayer.fireAtk = 0{
	oPlayer.darkAtk = 300
	oPlayer.attackTimer = 12
	oPlayer.attackType = 0
	}else{
	ds_list_add(potions,9)	
	}
}
if currentPotion = 10{
	//projectile
		oPlayer.attackTimer = 25
	oPlayer.attackType = 1	
	instance_create_depth(x,y,-10,oFireball)
}
if currentPotion = 11{
	//projectile summon
		oPlayer.attackTimer = 25
	oPlayer.attackType = 1	
}
if currentPotion = 12{
	//projectile	
		oPlayer.attackTimer = 25
	oPlayer.attackType = 1	
}
if currentPotion = 13{
	//screen overlay
	for(i=0;i<250;i++){
	effect_create_above(ef_flare,x+irandom_range(-1920,1920),y+irandom_range(-1080,1080),2,c_yellow)	
	}
		oPlayer.attackTimer = 25
	oPlayer.attackType = 1	
	with oEnemy{
	lightTime = 300	
	}
}
if currentPotion = 14{
	//screen overlay
	for(i=0;i<250;i++){
	effect_create_above(ef_flare,x+irandom_range(-1920,1920),y+irandom_range(-1080,1080),2,c_purple)	
	}
		oPlayer.attackTimer = 25
	oPlayer.attackType = 1	
	with oEnemy{
	darkTime = 300	
	}
}
if currentPotion = 15{
		oPlayer.attackTimer = 25
	oPlayer.attackType = 1	
	with oEnemy{
	if zx = oPlayer.zx and zy = oPlayer.zy{
	damage(9999)
	oGame.hp += 10
	}
	}
}
if keyboard_check_pressed(ord("R")){
	room_restart()
}
ds_list_delete(potions,selector)
