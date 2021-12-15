# Iterates up the stack until 1 updated element is left, which is stored in out.
function powerpack:__/lookup/iterator/manual/up
data modify storage powerpack:data lookup.tmp set from storage powerpack:data lookup.stack[-1]
execute unless data storage powerpack:data lookup.tmp{pos:"root"} run function powerpack:__/lookup/collapse/step