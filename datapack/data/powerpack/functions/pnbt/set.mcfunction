#Sets the players nbt.
data modify storage powerpack:data lookup.base set from storage powerpack:data pnbt.data
data modify storage powerpack:data lookup.arg set from storage powerpack:data pnbt.selected
scoreboard players operation #key pp.lookup = #key pp.pnbt
function powerpack:lookup/set
data modify storage powerpack:data pnbt.data set from storage powerpack:data lookup.out