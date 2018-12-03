slot1 = -1
slot2 = -1
slot3 = -1
take = false
zx = 0
zy = 0
x = oCamera.x-960
y = oCamera.y-540
with instance_create_depth(x+960-300,y+128,10,oButton){
type = 6	
}
with instance_create_depth(x+960+300-128,y+128,10,oButton){
type = 7	
}
with instance_create_depth(x+960-128,y+500,10,oButton){
type = 0	
}
with instance_create_depth(x+960,y+500,10,oButton){
type = 3	
}
with instance_create_depth(x+960-128,y+564,10,oButton){
type = 1	
}
with instance_create_depth(x+960,y+564,10,oButton){
type = 4	
}
with instance_create_depth(x+960-128,y+628,10,oButton){
type = 2
}
with instance_create_depth(x+960,y+628,10,oButton){
type = 5	
}
with instance_create_depth(x+896,y+320,10,oButton){
type = 8	
}
