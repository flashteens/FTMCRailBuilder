setblock ~ ~ ~ minecraft:concrete color=white
playsound minecraft:block.redstone_torch.burnout block @a ~ ~ ~ 1 2
function ftmc:subwaybuilder/wild_dcontrol/put_east if @p[rym=45,ry=134]
function ftmc:subwaybuilder/wild_dcontrol/put_west if @p[rym=-135,ry=-46]
function ftmc:subwaybuilder/wild_dcontrol/put_south if @p[rym=135,ry=180]
function ftmc:subwaybuilder/wild_dcontrol/put_south if @p[rym=-180,ry=-136]
function ftmc:subwaybuilder/wild_dcontrol/put_north if @p[rym=-45,ry=44]
function ftmc:subwaybuilder/wild_put_aboverail