#Changes key of an item.
function powerpack:__/lookup/find/start
execute if score #success pp.lookup matches 1 store result storage powerpack:data lookup.base[-1].value int 1 run scoreboard players get #new_key pp.lookup
data modify storage powerpack:data lookup.out append from storage powerpack:data lookup.base[]