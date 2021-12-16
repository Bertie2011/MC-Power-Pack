#Gets the player nbt data
data modify storage powerpack:data lookup.base set from storage powerpack:data pnbt.data
scoreboard players operation #key pp.lookup = #key pp.pnbt
function powerpack:lookup/get
execute if score #success pp.lookup matches 1 run data modify storage powerpack:data pnbt.selected set from storage powerpack:data lookup.out
execute if score #success pp.lookup matches 0 run data modify storage powerpack:data pnbt.selected set value {}