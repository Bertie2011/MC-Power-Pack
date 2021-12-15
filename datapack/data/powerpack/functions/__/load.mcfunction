#As/At: Server
data modify storage powerpack:data datapacks set value []
data remove storage powerpack:data lookup.base
data remove storage powerpack:data lookup.arg
data remove storage powerpack:data lookup.out
function #powerpack:load
schedule function #powerpack:tick 1t

scoreboard objectives add pp.consts dummy
scoreboard players set 2 pp.consts 2
scoreboard objectives add pp.random dummy
scoreboard objectives add pp.lookup dummy
scoreboard objectives add pp.datapacks trigger