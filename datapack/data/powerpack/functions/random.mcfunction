
execute if score #min pp.random < #max pp.random run function powerpack:__/random/next
execute if score #max pp.random < #min pp.random run scoreboard players set #min pp.random 0
scoreboard players operation #out pp.random = #min pp.random