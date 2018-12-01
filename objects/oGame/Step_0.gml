if selector > ds_list_size(potions)-1{
	selector = 0	
}
selector = selector mod 16
if selector < 0{
selector = ds_list_size(potions)-1
}