#Assigns a new player id
scoreboard players operation @s pp.pid = #next pp.pid
scoreboard players add #next pp.pid 1
tag @s add pp.pid.got_id