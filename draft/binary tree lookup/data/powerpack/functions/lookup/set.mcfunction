# Sets data for a certain key.

function powerpack:__/lookup/find/start
execute if score #success pp.lookup matches 0 run function powerpack:__/lookup/stack_insert
execute if score #success pp.lookup matches 1 run function powerpack:__/lookup/stack_set
function powerpack:__/lookup/collapse/start