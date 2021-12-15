# Tries to add the next left or right node to the stack or determines whether or not the key is found.

scoreboard players reset #next pp.lookup
execute store result score #val pp.lookup run data get storage powerpack:data lookup.stack[-1].node.value

# If no items, the item is not found.
execute unless data storage powerpack:data lookup.stack[-1] run scoreboard players set #success pp.lookup 0
# If key = val, we found it.
execute if data storage powerpack:data lookup.stack[-1] if score #key pp.lookup = #val pp.lookup run scoreboard players set #success pp.lookup 1
# If key < val and left side exists, then put the left side on the lookup.stack
execute if data storage powerpack:data lookup.stack[-1].node.left if score #key pp.lookup < #val pp.lookup run function powerpack:__/lookup/find/step_left
# If key > val and right side exists, then put the right side on the lookup.stack
execute if data storage powerpack:data lookup.stack[-1].node.right if score #key pp.lookup > #val pp.lookup run function powerpack:__/lookup/find/step_right

# If we stepped into a side, try again.
execute if score #next pp.lookup matches 1 run function powerpack:__/lookup/find/step