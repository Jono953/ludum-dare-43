for(i=0;i<irandom(3);i++){
	ranNum = irandom(100)
	if ranNum > 95{
	with instance_create_depth(x,y,10,oTree){
	sprite_index = choose(Mask_Group,Mask_Group_1,Mask_Group_2,Mask_Group_3,Mask_Group_4,Mask_Group_5,Mask_Group_6,Mask_Group_7,tree_lg)
	}
	}else if ranNum > 65{
	with instance_create_depth(x,y,10,oTree){
	sprite_index = choose(tree_md,tree_md1,tree_md2)	
	}	
	}else if ranNum > 40{
	with instance_create_depth(x,y,10,oTree){
	sprite_index = choose(tree_sm,tree_sm1)	
	}		
	}else{
	with instance_create_depth(x,y,10,oTree){
	sprite_index = choose(tree_sm2,tree_sm,tree_sm1)	
	}		
	}
}
image_alpha = 0