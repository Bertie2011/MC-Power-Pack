# Iterates up the stack until 1 updated element is left, which is stored in out.
data modify storage powerpack:data lookup.tmp_out set from storage powerpack:data lookup.stack[-1]
execute unless data storage powerpack:data lookup.tmp_out{pos:"root"} run function powerpack:__/lookup/collapse/step
data modify storage powerpack:data lookup.out set from storage powerpack:data lookup.stack[0].node