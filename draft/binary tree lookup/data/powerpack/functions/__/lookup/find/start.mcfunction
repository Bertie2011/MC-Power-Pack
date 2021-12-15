# Traverses the tree in powerpack:data lookup.base to find the key in #key pp.lookup. The trail to the location is stored in lookup.stack.
function powerpack:__/lookup/iterator/create
scoreboard players reset #success pp.lookup
function powerpack:__/lookup/find/step
execute unless score #success pp.lookup matches 0..1 run scoreboard players set #success pp.lookup 0