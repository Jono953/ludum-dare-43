hsp = 0
vsp = 0
z = 0
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
resistAir = 0.5
resistWater = 0.5
resistEarth = 0.5
resistFire = 0.5
resistLight = 2
resistDark = 2
//types: charge, chase, shoot, summon, make_fire, make_trap, make_bomb
attackType = "charge"
hp = 400
invun = 0
path_start(path0,16,path_action_restart,true)
image_blend = c_red