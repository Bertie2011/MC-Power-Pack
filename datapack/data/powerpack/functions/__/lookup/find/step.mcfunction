# Moves the last element of the lookup array to out and tries again.
data modify storage powerpack:data lookup.out append from storage powerpack:data lookup.base[-1]
data remove storage powerpack:data lookup.base[-1]
execute store result score #ckey pp.lookup run data get storage powerpack:data lookup.base[-1].value

execute if score #ckey pp.lookup = #key pp.lookup run scoreboard players set #success pp.lookup 1
execute unless score #ckey pp.lookup = #key pp.lookup if data storage powerpack:data lookup.base[-1] run function powerpack:__/lookup/find/step