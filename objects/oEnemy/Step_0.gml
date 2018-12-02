zx = int64(x/1920)
zy = int64(y/1080)

if zx = oPlayer.zx and zy = oPlayer.zy{
if !place_meeting(x+hsp,y,oWall){
	x += hsp
	hsp = 0
}else{
hsp = 0	
}
if !place_meeting(x,y+vsp,oWall){
	y += vsp
	vsp = 0
}else{
vsp = 0	
}
if actionTimer = 0{
action = irandom(5)	
actionTimer = irandom_range(30,60)
}
if actionTimer > -1{
actionTimer--	
}
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