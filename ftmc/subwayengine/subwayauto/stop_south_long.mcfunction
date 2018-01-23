entitydata @e[type=minecart,c=1,r=2] {Motion:[0d,0d,0d]}
scoreboard players set @e[type=minecart,c=1,r=2] ftcarttimer 200
scoreboard players tag @e[type=minecart,c=1,r=2] add delay_south
scoreboard players tag @e[type=minecart,c=1,r=2] add sfx_ftmc_se
playsound minecraft:block.redstone_torch.burnout block @a ~ ~ ~ 1