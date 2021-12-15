# Deletes an element in base data. Stack2 contains the full stack, stack contains the trace from the deleted element to the highest value on the left branch.

# Save trace in stack2, set stack to only contain the last element.
data modify storage powerpack:data lookup.stack2 set from storage powerpack:data lookup.stack
function powerpack:__/lookup/delete/prepare
data modify storage powerpack:data lookup.del_tmp set from storage powerpack:data lookup.stack[0]

# If to-be-deleted node contains no children, just delete it.
execute unless data storage powerpack:data lookup.del_tmp.node.left unless data storage powerpack:data lookup.del_tmp.node.right run data remove storage powerpack:data lookup.stack[-1]
# If to-be-deleted node contains 1 child, move the child up.
execute if data storage powerpack:data lookup.del_tmp.node.left unless data storage powerpack:data lookup.del_tmp.node.right run function powerpack:__/lookup/delete/delete_with_left_child
execute unless data storage powerpack:data lookup.del_tmp.node.left if data storage powerpack:data lookup.del_tmp.node.right run function powerpack:__/lookup/delete/delete_with_right_child

# After modifications, re-insert stack into stack2 or remove from stack2.
data remove storage powerpack:data lookup.stack2[-1]
execute if data storage powerpack:data lookup.stack[0] run data modify storage powerpack:data lookup.stack2 append from storage powerpack:data lookup.stack[0]
execute unless data storage powerpack:data lookup.stack[0] run data remove storage powerpack:data lookup.stack2[-1].node.left
execute unless data storage powerpack:data lookup.stack[0] run data remove storage powerpack:data lookup.stack2[-1].node.right
data modify storage powerpack:data lookup.stack set from storage powerpack:data lookup.stack2
function powerpack:__/lookup/collapse/start