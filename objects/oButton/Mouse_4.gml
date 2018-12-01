if type <= 5{
if oCrafting.slot1 = -1 and oGame.fc[type] > 0{
	oGame.fc[type]--
	oCrafting.slot1 = type
}else if oCrafting.slot2 = -1 and oGame.fc[type] >= 0{
	oGame.fc[type]--
	oCrafting.slot2 = type
}
}else{
if type = 6 and oCrafting.slot1 != -1{
	oGame.fc[oCrafting.slot1]++
	oCrafting.slot1 = -1
}
if type = 7 and oCrafting.slot2 != -1{
	oGame.fc[oCrafting.slot2]++
	oCrafting.slot2 = -1
}
if type = 8 and oCrafting.slot3 != -1{
	with oGame{
	if random(100) < focus{
	ds_list_add(potions,oCrafting.slot3)
	}else{
	ds_list_add(potions,0)	
	}
	focus -= cost[oCrafting.slot3]/2
	hp -= cost[oCrafting.slot3]
	}
	oCrafting.slot3 = -1
	oCrafting.slot2 = -1
	oCrafting.slot1 = -1
}
}