#Deletes a specific key.
function powerpack:__/lookup/find/start
execute if score #success pp.lookup matches 1 run data remove storage powerpack:data lookup.base[-1]
data modify storage powerpack:data lookup.out append from storage powerpack:data lookup.base[]