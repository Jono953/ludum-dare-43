zx = int64(x/1920)
zy = int64(y/1080)
if keyboard_check(ord("W")){
vsp = -spd;	
}else if keyboard_check(ord("S")){
vsp = spd;	
}else{
vsp = 0	
}
if keyboard_check(ord("A")){
hsp = -spd;	
}else if keyboard_check(ord("D")){
hsp = spd;	
}else{
hsp = 0	
}
if speedUp > 0{
speedUp--
spd = 32
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
