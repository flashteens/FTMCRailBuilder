# subway control loop function (east)
entitydata @e[type=minecart,tag=delay_east] {Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_east,score_ftcarttimer=1,score_ftcarttimer_min=1] add delay_east_end {Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_east_end] remove delay_east 
scoreboard players tag @e[type=minecart,tag=delay_east_end,score_ftcarttimer=0,score_ftcarttimer_min=0] remove delay_east_end
entitydata @e[type=minecart,tag=delay_east_end] {Motion:[0.25d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_east_end] add already_departed {Invulnerable:0b}
scoreboard players tag @e[type=minecart,tag=delay_east_end] remove psd_mode {Invulnerable:0b}

# subway control loop function (south)
entitydata @e[type=minecart,tag=delay_south] {Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_south,score_ftcarttimer=1,score_ftcarttimer_min=1] add delay_south_end {Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_south_end] remove delay_south 
scoreboard players tag @e[type=minecart,tag=delay_south_end,score_ftcarttimer=0,score_ftcarttimer_min=0] remove delay_south_end
entitydata @e[type=minecart,tag=delay_south_end] {Motion:[0d,0d,0.25d]}
scoreboard players tag @e[type=minecart,tag=delay_south_end] add already_departed {Invulnerable:0b}
scoreboard players tag @e[type=minecart,tag=delay_south_end] remove psd_mode {Invulnerable:0b}

# subway control loop function (west)
entitydata @e[type=minecart,tag=delay_west] {Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_west,score_ftcarttimer=1,score_ftcarttimer_min=1] add delay_west_end {Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_west_end] remove delay_west 
scoreboard players tag @e[type=minecart,tag=delay_west_end,score_ftcarttimer=0,score_ftcarttimer_min=0] remove delay_west_end
entitydata @e[type=minecart,tag=delay_west_end] {Motion:[-0.25d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_west_end] add already_departed {Invulnerable:0b}
scoreboard players tag @e[type=minecart,tag=delay_west_end] remove psd_mode {Invulnerable:0b}

# subway control loop function (north)
entitydata @e[type=minecart,tag=delay_north] {Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_north,score_ftcarttimer=1,score_ftcarttimer_min=1] add delay_north_end {Motion:[0d,0d,0d]}
scoreboard players tag @e[type=minecart,tag=delay_north_end] remove delay_north
scoreboard players tag @e[type=minecart,tag=delay_north_end,score_ftcarttimer=0,score_ftcarttimer_min=0] remove delay_north_end
entitydata @e[type=minecart,tag=delay_north_end] {Motion:[0d,0d,-0.25d]}
scoreboard players tag @e[type=minecart,tag=delay_north_end] add already_departed {Invulnerable:0b}
scoreboard players tag @e[type=minecart,tag=delay_north_end] remove psd_mode {Invulnerable:0b}

# minecart auto-cleaning mechanism
execute @e[type=minecart,tag=already_departed] ~ ~ ~ scoreboard players tag @s add to_be_removed
execute @e[type=minecart,tag=already_departed,tag=to_be_removed] ~ ~ ~ execute @e[type=!minecart,c=1,r=1] ~ ~ ~ scoreboard players tag @e[type=minecart,c=1,r=1,tag=already_departed,tag=to_be_removed,tag=!psd_mode] remove to_be_removed
execute @e[type=minecart,tag=already_departed,tag=to_be_removed] ~ ~ ~ execute @p[r=4] ~ ~ ~ scoreboard players tag @e[type=minecart,c=1,r=4,tag=already_departed,tag=to_be_removed,tag=psd_mode] remove to_be_removed
execute @e[type=minecart,tag=to_be_removed] ~ ~ ~ playsound minecraft:entity.player.attack.crit block @a ~ ~ ~ 0.5
kill @e[type=minecart,tag=to_be_removed]

# minecart timer countdown
scoreboard players remove @e[type=minecart,score_ftcarttimer_min=1] ftcarttimer 1