zx = int64(x/1920)
zy = int64(y/1080)
if place_meeting(x,y,oWall){
x += irandom_range(-256,256)
y += irandom_range(-256,256)
}
x = clamp(x,zx*1920+32,zx*1920+1920-32)
y = clamp(y,zy*1080+32,zy*1080+1080-32)

if zx = oPlayer.zx and zy = oPlayer.zy{
if !place_meeting(x+hsp,y,oWall){
	x += hsp
	hsp = approach(hsp,0,1)
}else{
hsp = 0	
}
if !place_meeting(x,y+vsp,oWall){
	y += vsp
	vsp = approach(vsp,0,1)
}else{
vsp = 0	
}
if actionTimer = 0{
if distance_to_object(oPlayer) <= 500 and attackType = "charge"{
	if slowTime = 0{
	move_towards_point(oPlayer.x,oPlayer.y,spd*3)
	}else{
	move_towards_point(oPlayer.x,oPlayer.y,spd*1.5)	
	}
	hsp = hspeed
	vsp = vspeed 
	hspeed = 0
	vspeed = 0
}else if distance_to_object(oPlayer) <= 500 and attackType = "make_bomb"{
	if irandom(100) > 30{
	instance_create_depth(x,y,-10,oBomb)	
	}
	hsp = random_range(-spd*3,spd*3)
	vsp = random_range(-spd*3,spd*3)
}else if distance_to_object(oPlayer) <= 500 and attackType = "make_fire"{
	
}
action = irandom_range(0,5)	
actionTimer = irandom_range(30,60)

}
if actionTimer > -1{
actionTimer--	
}
if distance_to_object(oPlayer) <= 500 and attackType = "chase"{
	move_towards_point(oPlayer.x,oPlayer.y,spd*1.33)
}else if distance_to_object(oPlayer) > 500{
if action = 1{
hsp = spd
vsp = 0
}
if action = 2{
hsp = -spd
vsp = 0
}
if action = 3{
hsp = 0
vsp = spd
}
if action = 4{
hsp = 0
vsp = -spd
}
}

if invun > 0{
invun--	
if image_alpha = 1{
image_alpha = 0	
}else{
image_alpha = 1	
}
}else{
image_alpha = 1	
}
if place_meeting(x,y,oHitbox) and invun = 0{
invun = 15
sound(enemyhurt)
if instance_nearest(x,y,oHitbox).damageType = "air"{
damage(instance_nearest(x,y,oHitbox).damage2 * resistAir)
}else if instance_nearest(x,y,oHitbox).damageType = "water"{
damage(instance_nearest(x,y,oHitbox).damage2 * resistWater)
}else if instance_nearest(x,y,oHitbox).damageType = "earth"{
damage(instance_nearest(x,y,oHitbox).damage2 * resistEarth)
}else if instance_nearest(x,y,oHitbox).damageType = "fire"{
damage(instance_nearest(x,y,oHitbox).damage2 * resistFire)
fireTime = 60
}else if instance_nearest(x,y,oHitbox).damageType = "light"{
damage(instance_nearest(x,y,oHitbox).damage2 * resistLight)
}else if instance_nearest(x,y,oHitbox).damageType = "dark"{
damage(instance_nearest(x,y,oHitbox).damage2 * resistDark)
}else{
damage(instance_nearest(x,y,oHitbox).damage2)
}
instance_destroy(instance_nearest(x,y,oHitbox))	
}
if hp < 0{
effect_create_above(ef_explosion,x,y,2,c_orange)
instance_destroy()	

}
}
if x < oPlayer.x{
image_xscale = -1	
}else{
image_xscale = 1	
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
damage(5 * resistFire)
invun = 30
}
}
if revealTime > 0{
revealTime--	
if irandom(100) > 60{
effect_create_above(ef_flare,x+random_range(-80,80),y+random_range(-80,80),1,c_white)
}
}
if lightTime > 0{
lightTime--
if irandom(100) > 60{
	effect_create_above(ef_flare,x+random_range(-80,80),y+random_range(-80,80),1,c_yellow)
}
if invun = 0{
for(i=0;i<10;i++){
effect_create_above(ef_flare,x+random_range(-80,80),y+random_range(-80,80),1,c_yellow)	
}
damage(10 * resistLight)
invun = 30
}
}
if darkTime > 0{
darkTime--
if irandom(100) > 60{
	effect_create_above(ef_flare,x+random_range(-80,80),y+random_range(-80,80),1,c_purple)
}
if invun = 0{
for(i=0;i<10;i++){
effect_create_above(ef_flare,x+random_range(-80,80),y+random_range(-80,80),1,c_purple)	
}
damage(10 * resistDark)
invun = 30
}
}
if slowTime > 0{
slowTime--
spd = 6
}else{
spd = 12	
}
if place_meeting(x,y,oPetrify){
alarm_set(0,15)
sprite_index = Petrified
}
image_speed = (abs(hsp) + abs(vsp))*2