# subway control loop function (east)
entitydata @e[type=minecart,tag=delay_east] {Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_east] add delay_east_end {PortalCooldown:1,Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_east_end] remove delay_east 
scoreboard players tag @e[type=minecart,tag=delay_east_end] remove delay_east_end {PortalCooldown:0}
entitydata @e[type=minecart,tag=delay_east_end] {Motion:[0.25d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_east_end] add already_departed {Invulnerable:0b}

# subway control loop function (south)
entitydata @e[type=minecart,tag=delay_south] {Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_south] add delay_south_end {PortalCooldown:1,Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_south_end] remove delay_south 
scoreboard players tag @e[type=minecart,tag=delay_south_end] remove delay_south_end {PortalCooldown:0}
entitydata @e[type=minecart,tag=delay_south_end] {Motion:[0d,0d,0.25d]}
scoreboard players tag @e[type=minecart,tag=delay_south_end] add already_departed {Invulnerable:0b}

# subway control loop function (west)
entitydata @e[type=minecart,tag=delay_west] {Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_west] add delay_west_end {PortalCooldown:1,Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_west_end] remove delay_west 
scoreboard players tag @e[type=minecart,tag=delay_west_end] remove delay_west_end {PortalCooldown:0}
entitydata @e[type=minecart,tag=delay_west_end] {Motion:[-0.25d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_west_end] add already_departed {Invulnerable:0b}

# subway control loop function (north)
entitydata @e[type=minecart,tag=delay_north] {Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_north] add delay_north_end {PortalCooldown:1,Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_north_end] remove delay_north
scoreboard players tag @e[type=minecart,tag=delay_north_end] remove delay_north_end {PortalCooldown:0}
entitydata @e[type=minecart,tag=delay_north_end] {Motion:[0d,0d,-0.25d]}
scoreboard players tag @e[type=minecart,tag=delay_north_end] add already_departed {Invulnerable:0b}

# minecart auto-cleaning mechanism
execute @e[type=minecart,tag=already_departed] ~ ~ ~ scoreboard players tag @s add to_be_removed
execute @e[type=minecart,tag=already_departed] ~ ~ ~ execute @e[type=!minecart,c=1,r=1] ~ ~ ~ scoreboard players tag @e[type=minecart,c=1,r=1,tag=already_departed] remove to_be_removed
execute @e[type=minecart,tag=to_be_removed] ~ ~ ~ playsound minecraft:entity.player.attack.crit block @a ~ ~ ~ 0.5
kill @e[type=minecart,tag=to_be_removed]