# prevents collisions against FTMC map
function ftmc:subwayengine/autolaunch_loop unless @a[tag=FtmcATMHasInit]
function ftmc:loop/main if @a[tag=FtmcATMHasInit]

# subway departure sound loop function (Default SFX)
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se] add delay_bell_n3 {PortalCooldown:50}
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se] remove delay_bell_n3 {PortalCooldown:49}
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se] add delay_bell_n1 {PortalCooldown:44}
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se] remove delay_bell_n1 {PortalCooldown:43}
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se] add delay_bell_n3 {PortalCooldown:30}
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se] remove delay_bell_n3 {PortalCooldown:29}
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se] add delay_bell_n1 {PortalCooldown:24}
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se] remove delay_bell_n1 {PortalCooldown:23}
execute @e[type=minecart,tag=delay_bell_n3] ~ ~ ~ playsound minecraft:block.note.bell block @a ~ ~ ~ 1 0.841
execute @e[type=minecart,tag=delay_bell_n1] ~ ~ ~ playsound minecraft:block.note.bell block @a ~ ~ ~ 1 0.667
# SFX destructor
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se] remove sfx_ftmc_se {PortalCooldown:5}

# subway departure sound loop function (For different SFX use #3)
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se3] add delay_bell_se3 {PortalCooldown:50}
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se3] remove delay_bell_se3 {PortalCooldown:49}
execute @e[type=minecart,tag=delay_bell_se3] ~ ~ ~ playsound SE3_SOUND_PLACEHOLDER block @a ~ ~ ~ 1 1
# SFX destructor
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se3] remove sfx_ftmc_se3 {PortalCooldown:5}

# subway departure sound loop function (For different SFX use #4)
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se4] add delay_bell_se4 {PortalCooldown:50}
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se4] remove delay_bell_se4 {PortalCooldown:49}
execute @e[type=minecart,tag=delay_bell_se4] ~ ~ ~ playsound SE4_SOUND_PLACEHOLDER block @a ~ ~ ~ 1 1
# SFX destructor
scoreboard players tag @e[type=minecart,tag=sfx_ftmc_se4] remove sfx_ftmc_se4 {PortalCooldown:5}

# subway departure sound loop function (Custom SFX Management Function(s), ex. TRTC Advanced Sound Effects)
function ftmc:subwayengine/sfx/custom/trtcadv/trtc_sfx
