#Inserts a new element in base.
data modify storage powerpack:data lookup.base append value {}
execute store result storage powerpack:data lookup.base[-1].value int 1 run scoreboard players get #key pp.lookup