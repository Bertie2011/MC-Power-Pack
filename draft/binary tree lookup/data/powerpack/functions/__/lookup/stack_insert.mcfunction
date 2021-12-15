# Appends a new item to the stack.
data modify storage powerpack:data lookup.stack append value {}
execute store result score #val pp.lookup run data get storage powerpack:data lookup.stack[-2].node.value

execute unless data storage powerpack:data lookup.stack[1] run data modify storage powerpack:data lookup.stack[-1].pos set value "root"
execute if data storage powerpack:data lookup.stack[1] if score #key pp.lookup < #val pp.lookup run data modify storage powerpack:data lookup.stack[-1].pos set value "left"
execute if data storage powerpack:data lookup.stack[1] if score #key pp.lookup > #val pp.lookup run data modify storage powerpack:data lookup.stack[-1].pos set value "right"

execute store result storage powerpack:data lookup.stack[-1].node.value int 1 run scoreboard players get #key pp.lookup
data modify storage powerpack:data lookup.stack[-1].node.data set from storage powerpack:data lookup.arg