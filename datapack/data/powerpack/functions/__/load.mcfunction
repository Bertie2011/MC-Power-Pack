#As/At: Server
data modify storage powerpack:data datapacks set value []
data remove storage powerpack:data lookup.base
data remove storage powerpack:data lookup.arg
data remove storage powerpack:data lookup.out
data remove storage powerpack:data pnbt.selected
execute unless data storage powerpack:data pnbt.data run data modify storage powerpack:data pnbt.data set value []

scoreboard objectives add pp.consts dummy
scoreboard players set 2 pp.consts 2
scoreboard objectives add pp.version dummy
scoreboard players set #version pp.version 1
scoreboard objectives add pp.random dummy
scoreboard objectives add pp.lookup dummy
scoreboard objectives add pp.pid dummy
scoreboard objectives add pp.pnbt dummy
scoreboard objectives add pp.datapacks trigger

function #powerpack:load
function powerpack:__/compatibility/check
data modify storage powerpack:data datapacks append value {creditsText:'{"text":"Power Pack","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"Click to open GitHub"}},"clickEvent":{"action":"open_url","value":"https://github.com/Bertie2011/MC-Power-Pack"}}'}

schedule function #powerpack:tick 1t
