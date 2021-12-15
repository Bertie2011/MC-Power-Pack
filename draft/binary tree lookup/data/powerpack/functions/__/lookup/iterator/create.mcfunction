# Sets the stack to the base value. The stack is the beginning of a path.
data modify storage powerpack:data lookup.stack set value []
execute if data storage powerpack:data lookup.base run data modify storage powerpack:data lookup.stack append value {pos:"root"}
execute if data storage powerpack:data lookup.base run data modify storage powerpack:data lookup.stack[0].node set from storage powerpack:data lookup.base