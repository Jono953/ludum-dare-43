zx = int64(x/1920)
zy = int64(y/1080)
if slot1 = slot2 and slot1 != -1 and slot2 != -1{
slot3 = 0
}else if (slot1 = 0 and slot2 = 1) or (slot1 = 1 and slot2 = 0){
slot3 = 1	
}else if (slot1 = 0 and slot2 = 2) or (slot1 = 2 and slot2 = 0){
slot3 = 2
}else if (slot1 = 0 and slot2 = 3) or (slot1 = 3 and slot2 = 0){
slot3 = 3	
}else if (slot1 = 0 and slot2 = 4) or (slot1 = 4 and slot2 = 0){
slot3 = 4	
}else if (slot1 = 0 and slot2 = 5) or (slot1 = 5 and slot2 = 0){
slot3 = 5	
}else if (slot1 = 1 and slot2 = 2) or (slot1 = 2 and slot2 = 1){
slot3 = 6	
}else if (slot1 = 1 and slot2 = 3) or (slot1 = 3 and slot2 = 1){
slot3 = 7	
}else if (slot1 = 1 and slot2 = 4) or (slot1 = 4 and slot2 = 1){
slot3 = 8	
}else if (slot1 = 1 and slot2 = 5) or (slot1 = 5 and slot2 = 1){
slot3 = 9	
}else if (slot1 = 2 and slot2 = 3) or (slot1 = 3 and slot2 = 2){
slot3 = 10
}else if (slot1 = 2 and slot2 = 4) or (slot1 = 4 and slot2 = 2){
slot3 = 11
}else if (slot1 = 2 and slot2 = 5) or (slot1 = 5 and slot2 = 2){
slot3 = 12
}else if (slot1 = 3 and slot2 = 4) or (slot1 = 4 and slot2 = 3){
slot3 = 13
}else if (slot1 = 3 and slot2 = 5) or (slot1 = 5 and slot2 = 3){
slot3 = 14
}else if(slot1 = 4 and slot2 = 5) or (slot1 = 5 and slot2 = 4){
slot3 = 15;	
}else{
slot3 = -1;	
}


