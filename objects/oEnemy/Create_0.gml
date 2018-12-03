hsp = 0
vsp = 0
z = 0
zx = int64(x/1920)
zy = int64(y/1080)
if place_meeting(x,y,oWall){
x += irandom_range(-256,256)
y += irandom_range(-256,256)
}
dieTime = -1
fireTime = 0;
lightTime = 0
darkTime = 0
slowTime = 0;
revealTime = 0;
dsp = 0
spd = 12
action = 0
actionTimer = irandom_range(30,60)
resistAir = 1
resistWater = 2
resistEarth = 0.5
resistFire = 0
resistLight = 2
resistDark = 1
//types: charge, chase, shoot, summon, make_fire, make_trap, make_bomb
attackType = "charge"
hp = 25
invun = 0
image_blend = c_red
if zx = 1 and zy = 6{
y += 6000	
}