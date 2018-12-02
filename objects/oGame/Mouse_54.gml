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
}
if currentPotion = 5{
	oPlayer.attackTimer = 25
	oPlayer.attackType = 1
}
if currentPotion = 6{
	oPlayer.attackTimer = 25
	oPlayer.attackType = 1	
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
		oPlayer.attackTimer = 25
	oPlayer.attackType = 1	
}
if currentPotion = 14{
	//screen overlay
		oPlayer.attackTimer = 25
	oPlayer.attackType = 1	
}
if currentPotion = 15{
		oPlayer.attackTimer = 25
	oPlayer.attackType = 1	
	with oEnemy{
	if zx = oPlayer.zx and zy = oPlayer.zy{
	hp -= 9999
	}
	}
}
if keyboard_check_pressed(ord("R")){room_restart()}
ds_list_delete(potions,selector)
