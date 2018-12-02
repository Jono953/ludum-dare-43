zx = int64(x/1920)
zy = int64(y/1080)
if keyboard_check(ord("W")){
vsp = approach(vsp,-spd,1)	
}else if keyboard_check(ord("S")){
vsp = approach(vsp,spd,1);	
}else{
vsp = approach(vsp,0,2)	
}
if keyboard_check(ord("A")){
hsp = approach(hsp,-spd,1);	
}else if keyboard_check(ord("D")){
hsp = approach(hsp,spd,1);	
}else{
hsp = approach(hsp,0,2)
}
if speedUp > 0{
speedUp--
spd = 24
}else{
spd = 16
}
if !place_meeting(x+hsp,y,oWall){
	x += hsp
}else{
hsp = 0	
}
if !place_meeting(x,y+vsp,oWall){
	y += vsp

}else{
vsp = 0	
}
if abs(hsp) > 12 or abs(vsp) > 12{
sprite_index = sPlayerRun	
}else if abs(hsp) > 0 or abs(vsp) > 0{
sprite_index = sPlayerWalk	
}
if hsp > 0{
image_xscale = 1
}else if hsp < 0{
image_xscale = -1	
}else{
if vsp = 0{
sprite_index = sPlayerIdle
}else{
if abs(vsp) > 12{
sprite_index = sPlayerRun	
}else if abs(vsp) > 0{
sprite_index = sPlayerWalk
}
}
}
if abs(hsp) < 2 and abs(vsp) < 2{
if attackTimer > -1{
	if attackType = 0{
	sprite_index = sPlayerAttackLight	
	}
	if attackType = 1{
	sprite_index = sPlayerAttackHeavy	
	}
}
}
if attackTimer > -1{
attackTimer--	
}
if mouse_check_button_pressed(mb_left) and !place_meeting(mouse_x,mouse_y,oButton){
if x < mouse_x{
image_xscale = 1	
}
if x > mouse_x{
image_xscale = -1	
}
if oGame.focus >= 0{
	attackTimer = 12
	attackType = 0
	oGame.focus--
	instance_create_depth(x,y,10,oAttack)
}
}
if fireAtk > 0{
fireAtk--
lightAtk = 0
darkAtk = 0
}
if lightAtk > 0{
fireAtk = 0
lightAtk--
darkAtk = 0
}
if darkAtk > 0{
fireAtk = 0
lightAtk = 0
darkAtk--
}
if invun > 0{
invun--	
if image_alpha = 0{
image_alpha = 1	
}else{
image_alpha = 0	
}
}else{
image_alpha = 1	
}
if invun = 0 and place_meeting(x,y,oEnemy){
if instance_exists(oCrafting){
instance_destroy(oCrafting)
instance_destroy(oButton)
}
invun = 30
oGame.hp -= irandom_range(20,40)
}
