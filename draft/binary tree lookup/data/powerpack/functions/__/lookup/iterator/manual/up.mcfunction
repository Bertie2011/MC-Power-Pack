# Moves the last element inside the previous element.

data modify storage powerpack:data lookup.tmp set from storage powerpack:data lookup.stack[-1]
execute if data storage powerpack:data lookup.tmp{pos:"left"} run data modify storage powerpack:data lookup.stack[-2].node.left set from storage powerpack:data lookup.tmp.node
execute if data storage powerpack:data lookup.tmp{pos:"right"} run data modify storage powerpack:data lookup.stack[-2].node.right set from storage powerpack:data lookup.tmp.node
data remove storage powerpack:data lookup.stack[-1]