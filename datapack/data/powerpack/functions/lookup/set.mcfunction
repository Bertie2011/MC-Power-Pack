#Sets the arg into base.
function powerpack:__/lookup/find/start
execute if score #success pp.lookup matches 0 run function powerpack:__/lookup/insert
data modify storage powerpack:data lookup.base[-1].data set from storage powerpack:data lookup.arg
data modify storage powerpack:data lookup.out append from storage powerpack:data lookup.base[]