## Step into the right branch on the stack
data modify storage powerpack:data lookup.stack append value {pos:"right"}
data modify storage powerpack:data lookup.stack[-1].node set from storage powerpack:data lookup.stack[-2].node.right