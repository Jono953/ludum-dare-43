fc[0] = 0
fc[1] = 0
fc[2] = 0
fc[3] = 0
fc[4] = 0
fc[5] = 0
potions = ds_list_create()
colors[0] = make_color_rgb(60,60,60)
colors[1] = make_color_rgb(175,206,255)
colors[2] = make_color_rgb(211,185,99)
colors[3] = make_color_rgb(234,154,117)
colors[4] = make_color_rgb(255,253,209)
colors[5] = make_color_rgb(216,191,255)
colors[6] = make_color_rgb(183,205,206)
colors[7] = make_color_rgb(255,10,75)
colors[8] = make_color_rgb(203,206,117)
colors[9] = make_color_rgb(78,57,94)
colors[10] = make_color_rgb(255,173,91)
colors[11] = make_color_rgb(139,140,110)
colors[12] = make_color_rgb(71,71,57)
colors[13] = make_color_rgb(255,231,181)
colors[14] = make_color_rgb(34,5,56)
colors[15] = make_color_rgb(0,0,0)
for(i=0;i<100;i++){
instance_create_depth(irandom(5760),irandom(7560),-10,oMushroomEnergy)
}
for(i=0;i<250;i++){
with instance_create_depth(irandom(5760),irandom(7560),-y,oTree){
sprite_index = choose(sGrassSmall,sGrassSmall,sGrassSmall,sGrassMed,sGrassMed,sGrassLar)
image_index = irandom(30)
}
}
for(i=0;i<50;i++){
ranNum = irandom(100)
if ranNum > 95{
with instance_create_depth(irandom(5760),irandom(7560),-10,oEnemy){
attackType = "charge"
resistAir = 1
resistWater = 1
resistEarth = 1
resistFire = 1
resistLight = 3
resistDark = 0
hp = 50
spd = 24
image_blend = make_color_rgb(100,100,100)
}
}else if ranNum > 85{
	with instance_create_depth(irandom(5760),irandom(7560),-10,oEnemy){
attackType = "make_bomb"
sprite_index = sEnemy3
resistAir = 1
resistWater = 1
resistEarth = 1
resistFire = 1
resistLight = 0
resistDark = 3
hp = 75
spd = 32
image_blend = make_color_rgb(255,255,255)	
	}
}else if ranNum > 65{
	with instance_create_depth(irandom(5760),irandom(7560),-10,oEnemy){
attackType = "chase"
sprite_index = sEnemy2
resistAir = 1
resistWater = 3
resistEarth = 1
resistFire = 0
resistLight = 10
resistDark = 1
hp = 40
spd = 16
image_blend = make_color_rgb(0,0,255)
	}
}else if ranNum > 40{
	with instance_create_depth(irandom(5760),irandom(7560),-10,oEnemy){
attackType = "make_fire"
sprite_index = sEnemy
resistAir = 6
resistWater = 0
resistEarth = 1
resistFire = 6
resistLight = 1
resistDark = 1
hp = 30
spd = 20
image_blend = make_color_rgb(255,255,0)
	}
}else if ranNum > 20{
	with instance_create_depth(irandom(5760),irandom(7560),-10,oEnemy){
attackType = "make_fire"
sprite_index = sEnemy2
resistAir = 32
resistWater = 0.1
resistEarth = 0.1
resistFire = 0.1
resistLight = 0.1
resistDark = 0.1
hp = 1
spd = 16
image_blend = make_color_rgb(225,255,25)
	}
}else{
	with instance_create_depth(irandom(5760),irandom(7560),-10,oEnemy){
attackType = "charge"
sprite_index = sEnemy
resistAir = 25
resistWater = 25
resistEarth = 25
resistFire = 25
resistLight = 25
resistDark = 25
hp = 5
spd = 20
image_blend = make_color_rgb(255,255,255)
	}
}
}
name[0] = "Failure"
name[1] = "Self-Hastening"
name[2] = "Conjure Comet"
name[3] = "Conjure Flare"
name[4] = "Summon Air Bolt"
name[5] = "Reveal Enemies"
name[6] = "Augment Environment: Enemy Slowness"
name[7] = "Augment Attack: Fire"
name[8] = "Augment Attack: Light"
name[9] = "Augment Attack: Dark"
name[10] = "Summon Fireball"
name[11] = "Conjure Monolith Strike"
name[12] = "Petrification"
name[13] = "Augment Environment: Holy Blaze"
name[14] = "Augment Environment: Cursed Storm"
name[15] = "Division"

desc[0] = "Deals 10 damage to player. Don't waste your materials."
desc[1] = "Doubles movement speed for 15 seconds."
desc[2] = "Summons comet that falls down, dealing earth damage."
desc[3] = "Summons fireball that falls down, dealing fire damage."
desc[4] = "Summons Air Bolt that deals air damage. Disappears on contact with wall or enemy."
desc[5] = "Reveals all enemies for 10 seconds."
desc[6] = "Slows all enemies on screen for 10 seconds."
desc[7] = "Causes player's attack to deal fire damage for 10 seconds"
desc[8] = "Causes player's attack to deal light damage for 10 seconds"
desc[9] = "Causes player's attack to deal dark damage for 10 seconds"
desc[10] = "Summons Fireball that deals fire damage. Disappears on contact with wall or enemy."
desc[11] = "Summons Monolith that falls down and deals light damage in a large area."
desc[12] = "Summons ball that turns an enemy into stone."
desc[13] = "Sets every enemy on screen on holy fire dealing light damage over 10 seconds."
desc[14] = "Sets every enemy on screen on cursed fire dealing dark damage over 10 seconds."
desc[15] = "Kills all enemies on screen instantly, healing the player for 10 hp per kill."

cost[0] = 10 
cost[1] = 5
cost[2] = 10
cost[3] = 15
cost[4] = 20
cost[5] = 25
cost[6] = 10
cost[7] = 15
cost[8] = 20
cost[9] = 25
cost[10] = 15
cost[11] = 20
cost[12] = 25
cost[13] = 50
cost[14] = 50
cost[15] = 249

type[0] = 0
type[1] = 0
type[2] = 1
type[3] = 1
type[4] = 1
type[5] = 1
type[6] = 2
type[7] = 0
type[8] = 0
type[9] = 0
type[10] = 1
type[11] = 1
type[12] = 1
type[13] = 2
type[14] = 2
type[15] = 2

hp = 250
mhp = 250
focus = 100
currentRoom = 0
selector = 0
currentPotion = -1