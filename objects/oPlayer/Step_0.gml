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
spd = 24
}else{
spd = 12
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
image_xscale = 1
}else{
if abs(vsp) > 12{
sprite_index = sPlayerRun	
}else if abs(vsp) > 0{
sprite_index = sPlayerWalk
}
}
}