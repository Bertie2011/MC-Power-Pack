summon marker ~ ~ ~ {Tags:["pp_random", "pp_random_1"]}
summon marker ~ ~ ~ {Tags:["pp_random", "pp_random_2"]}
summon marker ~ ~ ~ {Tags:["pp_random", "pp_random_3"]}
tag @e[tag=pp_random,limit=1,sort=random] add pp_random_target
execute as @e[tag=pp_random_target,limit=1] if entity @s[tag=pp_random_2] run scoreboard players add #min pp.random 1
execute as @e[tag=pp_random_target,limit=1] if entity @s[tag=pp_random_3] run scoreboard players add #min pp.random 2
kill @e[tag=pp_random,limit=3]