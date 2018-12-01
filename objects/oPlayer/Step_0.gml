zx = int64(x/1920)
zy = int64(y/1080)
if keyboard_check(ord("W")){
vsp = -spd;	
}
if keyboard_check(ord("S")){
vsp = spd;	
}
if keyboard_check(ord("A")){
hsp = -spd;	
}
if keyboard_check(ord("D")){
hsp = spd;	
}
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
