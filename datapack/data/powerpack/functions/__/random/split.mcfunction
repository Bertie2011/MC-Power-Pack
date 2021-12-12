# Find half and if its odd
scoreboard players operation #pivot pp.random = #delta pp.random
scoreboard players operation #pivot pp.random /= 2 pp.consts
scoreboard players operation #pivot pp.random += #min pp.random

# Adjust min/max to target half of the original range.
execute if score #top pp.random matches 1 run scoreboard players operation #min pp.random = #pivot pp.random
execute if score #top pp.random matches 1 run scoreboard players add #min pp.random 1
execute if score #top pp.random matches 0 run scoreboard players operation #max pp.random = #pivot pp.random

function powerpack:__/random/next