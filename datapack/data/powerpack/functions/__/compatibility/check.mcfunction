# Reports incompatible data packs
data modify storage powerpack:data tmp set from storage powerpack:data datapacks
execute if data storage powerpack:data tmp[-1] run function powerpack:__/compatibility/step
data remove storage powerpack:data tmp