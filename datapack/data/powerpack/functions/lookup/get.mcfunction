#Gets the data in a lookup array.
scoreboard players set #success pp.lookup 0
execute store result score #ckey pp.lookup run data get storage powerpack:data lookup.base[-1].value

execute if score #ckey pp.lookup = #key pp.lookup run scoreboard players set #success pp.lookup 1
execute unless score #ckey pp.lookup = #key pp.lookup if data storage powerpack:data lookup.base[-1] run function powerpack:__/lookup/get

execute if score #success pp.lookup matches 1 run data modify storage powerpack:data lookup.out set from storage powerpack:data lookup.base[-1].data