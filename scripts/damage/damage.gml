hp -= int64(argument0)
with instance_create_depth(x,y,-9999,oDamagePopup){
if argument0 < 0{
image_blend = c_lime
text = string(int64(-argument0))		
}else{
image_blend = c_red
text = string(int64(argument0))	
}
}