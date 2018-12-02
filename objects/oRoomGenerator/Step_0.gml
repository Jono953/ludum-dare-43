for(i=0;i<1920/128;i++){
if i > 9 or i < 5{
instance_create_depth(x+i*128,y,10,oWall)	
}
if i > 9 or i < 5{
instance_create_depth(x+i*128,y+1080-128,10,oWall)	
}
}
for(i=0;i<1080/128;i++){
instance_create_depth(x,y+128,10,oWall)
instance_create_depth(x,y+1080-256,10,oWall)
instance_create_depth(x+1920-128,y+128,10,oWall)
instance_create_depth(x+1920-128,y+1080-256,10,oWall)
}

instance_destroy()