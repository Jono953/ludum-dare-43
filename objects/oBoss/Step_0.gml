zx = int64(x/1920)
zy = int64(y/1080)
if place_meeting(x,y,oWall){
x += irandom_range(-256,256)
y += irandom_range(-256,256)
}
x = clamp(x,zx*1920+32,zx*1920+1920-32)
y = clamp(y,zy*1080+32,zy*1080+1080-32)

if zx = oPlayer.zx and zy = oPlayer.zy{
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
sound(bosshurt)
invun = 15
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
damage(0)
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
damage(0)
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
damage(0)
invun = 30
}
}
if slowTime > 0{
slowTime--
spd = 6
}else{
spd = 12	
}
if irandom(60000) > 59800{
	with instance_create_depth(x,y,-10,oEnemy){
attackType = "charge"
resistAir = random_range(0,4)
resistWater = random_range(0,4)
resistEarth = random_range(0,4)
resistFire = random_range(0,4)
resistLight = random_range(0,4)
resistDark = random_range(0,4)
hp = irandom_range(50,80)
spd = random_range(20,30)
image_blend = make_color_rgb(irandom(255),irandom(255),irandom(255))
}
}
if distance_to_object(oPlayer) < 500 and irandom(60000) > 59800{
	instance_create_depth(x,y,-10,oFireballEnemy)
}
