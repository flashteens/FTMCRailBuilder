# prevents collisions against the existing gameLoopFunction in the map "Republic of FlashTeens"
function ftmc:subwayengine/autolaunch_loop unless @a[tag=FtmcATMHasInit]
function ftmc:loop/main if @a[tag=FtmcATMHasInit]

# subway departure sound loop function (Default SFX)
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se,score_ftcarttimer=50,score_ftcarttimer_min=50] add delay_bell_n3
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se,score_ftcarttimer=44,score_ftcarttimer_min=44] add delay_bell_n1
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se,score_ftcarttimer=30,score_ftcarttimer_min=30] add delay_bell_n3
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se,score_ftcarttimer=24,score_ftcarttimer_min=24] add delay_bell_n1
execute @e[type=minecart,tag=delay_bell_n3] ~ ~ ~ playsound minecraft:block.note.bell block @a ~ ~ ~ 1 0.841
execute @e[type=minecart,tag=delay_bell_n1] ~ ~ ~ playsound minecraft:block.note.bell block @a ~ ~ ~ 1 0.667
execute @e[type=minecart,tag=delay_bell_n3] ~ ~ ~ scoreboard players tag @s remove delay_bell_n3
execute @e[type=minecart,tag=delay_bell_n1] ~ ~ ~ scoreboard players tag @s remove delay_bell_n1
# SFX destructor
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se,score_ftcarttimer=5,score_ftcarttimer_min=5] remove sfx_ftmc_se

# subway departure sound loop function (For different SFX use #3)
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se3,score_ftcarttimer=50,score_ftcarttimer_min=50] add delay_bell_se3
execute @e[type=minecart,tag=delay_bell_se3] ~ ~ ~ playsound SE3_SOUND_PLACEHOLDER block @a ~ ~ ~ 1 1
execute @e[type=minecart,tag=delay_bell_se3] ~ ~ ~ scoreboard players tag @s remove delay_bell_se3
# SFX destructor
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se3,score_ftcarttimer=5,score_ftcarttimer_min=5] remove sfx_ftmc_se3

# subway departure sound loop function (For different SFX use #4)
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se4,score_ftcarttimer=50,score_ftcarttimer_min=50] add delay_bell_se4
execute @e[type=minecart,tag=delay_bell_se4] ~ ~ ~ playsound SE4_SOUND_PLACEHOLDER block @a ~ ~ ~ 1 1
execute @e[type=minecart,tag=delay_bell_se4] ~ ~ ~ scoreboard players tag @s remove delay_bell_se4
# SFX destructor
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se4,score_ftcarttimer=5,score_ftcarttimer_min=5] remove sfx_ftmc_se4

# subway departure sound loop function (Custom SFX Management Function(s))
function ftmc:subwayengine/sfx/custom/whatever_you_want
