if sprite_index != sGrassSmall and sprite_index != sGrassMed and sprite_index != sGrassLar{
if distance_to_object(oPlayer) < 300{
image_alpha = approach(image_alpha,0.25,0.1)	
}else{
image_alpha = approach(image_alpha,1,0.1)	
}
}
depth = -y