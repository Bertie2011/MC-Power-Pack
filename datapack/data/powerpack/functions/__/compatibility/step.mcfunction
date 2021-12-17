# Reports incompatible data packs
scoreboard players set #current pp.version 0
execute store result score #current pp.version run data get storage powerpack:data tmp[-1].version
execute if score #current pp.version matches 1.. unless score #current pp.version = #version pp.version run tellraw @a {"text":"","color":"red","extra":[{"text":"Power Pack > ","bold":true,"color":"gold"},{"text":"Data pack ","color":"red"},{"storage":"powerpack:data","nbt":"tmp[-1].creditsText","interpret":true},{"text":" expects version "},{"score":{"objective":"pp.version","name":"#current"}},{"text":", but version "},{"score":{"objective":"pp.version","name":"#version"}},{"text":" is installed!"}]}
data remove storage powerpack:data tmp[-1]
execute if data storage powerpack:data tmp[-1] run function powerpack:__/compatibility/step