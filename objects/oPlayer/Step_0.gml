zx = int64(x/1920)
zy = int64(y/1080)
depth = -y - 128
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
if mouse_check_button_pressed(mb_left) and !place_meeting(mouse_x,mouse_y,oButton) and mouse_y < oCamera.y+450{
if x < mouse_x{
image_xscale = 1	
}
if x > mouse_x{
image_xscale = -1	
}
	attackTimer = 12
	attackType = 0
	instance_create_depth(x,y,10,oAttack)
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
with oGame{
damage(irandom_range(10,20))	
}
if instance_nearest(x,y,oEnemy).attackType = "make_fire"{
fireTime = 60	
}
if x < instance_nearest(x,y,oEnemy).x{
hsp -= 24	
}else{
hsp += 24		
}
if y < instance_nearest(x,y,oEnemy).y{
vsp -= 24	
}else{
vsp += 24		
}
}

if invun = 0 and place_meeting(x,y,oBoss){
if instance_exists(oCrafting){
instance_destroy(oCrafting)
instance_destroy(oButton)
}
invun = 30
with oGame{
damage(irandom_range(20,40))	
}

if x < instance_nearest(x,y,oBoss).x{
hsp -= 24	
}else{
hsp += 24		
}
if y < instance_nearest(x,y,oBoss).y{
vsp -= 24	
}else{
vsp += 24		
}
}
if fireTime > 0{
fireTime--
if irandom(100) > 60{
instance_create_depth(x,y,-10,oParticleFire)	
}
if invun = 0{
for(i=0;i<10;i++){
instance_create_depth(x,y,-10,oParticleFire)	
}
with oGame{
damage(5)	
}
invun = 30
}
}
if place_meeting(x,y,oRecovery){
with oGame{
damage(irandom_range(-60,-25))	
}
instance_destroy(instance_nearest(x,y,oRecovery))
}