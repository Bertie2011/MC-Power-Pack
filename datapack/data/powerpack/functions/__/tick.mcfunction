#As/At: Server
schedule function #powerpack:tick 1t

scoreboard players enable @a pp.datapacks
execute as @a[scores={pp.datapacks=1..}] run function powerpack:__/list_datapacks