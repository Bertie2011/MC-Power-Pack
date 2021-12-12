#As/At: Server
data remove storage powerpack:data datapacks
function #powerpack:load
schedule function #powerpack:tick 1t

scoreboard objectives add pp.consts dummy
scoreboard players set 2 pp.consts 2
scoreboard objectives add pp.random dummy