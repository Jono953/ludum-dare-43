currentPotion = ds_list_find_value(potions,selector)
if currentPotion = 0{
hp -= 10	
}
if currentPotion = 1{
	oPlayer.speedUp = 450
}
if currentPotion = 2{
	//tornado	
}
if currentPotion = 3{
	if !instance_exists(oFireTornado){
	instance_create_depth(x,y,5,oFireTornado)
	}else{
	ds_list_add(potions,3)
	}
}
if currentPotion = 4{
	//projectile	
}
if currentPotion = 5{
	//tornado	
}
if currentPotion = 6{
	//slow enemies	
}
if currentPotion = 7{
	//change weapon	
}
if currentPotion = 8{
	//change weapon
}
if currentPotion = 9{
	//change weapon
}
if currentPotion = 10{
	//projectile
}
if currentPotion = 11{
	//projectile summon
}
if currentPotion = 12{
	//projectile	
}
if currentPotion = 13{
	//screen overlay
}
if currentPotion = 14{
	//screen overlay
}
if currentPotion = 15{
	//divide
}

ds_list_delete(potions,selector)
