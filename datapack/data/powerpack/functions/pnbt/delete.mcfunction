#Deletes a specific key.
data modify storage powerpack:data lookup.base set from storage powerpack:data pnbt.data
scoreboard players operation #key pp.lookup = #key pp.pnbt
function powerpack:lookup/delete
execute if score #success pp.lookup matches 1 run data modify storage powerpack:data pnbt.data set from storage powerpack:data lookup.out