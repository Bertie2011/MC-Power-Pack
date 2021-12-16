#As/At: Server
schedule function #powerpack:tick 1t
execute as @a[tag=!pp.pid.got_id] run function powerpack:__/pid_assign

scoreboard players enable @a pp.datapacks
execute as @a[scores={pp.datapacks=1..}] run function powerpack:__/list_datapacks