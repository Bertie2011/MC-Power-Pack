#As/At: Server
data modify storage powerpack:data datapacks set value []
data remove storage powerpack:data lookup.base
data remove storage powerpack:data lookup.arg
data remove storage powerpack:data lookup.out
data remove storage powerpack:data pnbt.selected
execute unless data storage powerpack:data pnbt.data run data modify storage powerpack:data pnbt.data set value []
function #powerpack:load
schedule function #powerpack:tick 1t

scoreboard objectives add pp.consts dummy
scoreboard players set 2 pp.consts 2
scoreboard objectives add pp.random dummy
scoreboard objectives add pp.lookup dummy
scoreboard objectives add pp.pid dummy
scoreboard objectives add pp.pnbt dummy
scoreboard objectives add pp.datapacks trigger