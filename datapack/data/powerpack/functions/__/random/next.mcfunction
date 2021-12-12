# Calculate half the difference.
scoreboard players operation #delta pp.random = #max pp.random
scoreboard players operation #delta pp.random -= #min pp.random

# Randomly pick top or bottom half.
scoreboard players set #chance pp.random 500000
scoreboard players set #top pp.random 0
execute if predicate powerpack:random run scoreboard players set #top pp.random 1

# Choose what to do
execute if score #delta pp.random matches 1 run function powerpack:__/random/pick_from_two
execute if score #delta pp.random matches 2 run function powerpack:__/random/pick_from_three
execute if score #delta pp.random matches 3.. run function powerpack:__/random/split