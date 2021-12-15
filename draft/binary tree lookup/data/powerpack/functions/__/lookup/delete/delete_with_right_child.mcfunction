# To be deleted node contains left child.
data modify storage powerpack:data lookup.stack[0].node.value set from storage powerpack:data lookup.stack[0].node.right.value
data modify storage powerpack:data lookup.stack[0].node.data set from storage powerpack:data lookup.stack[0].node.right.data
data modify storage powerpack:data lookup.stack[0].node.left set from storage powerpack:data lookup.stack[0].node.right.left
data modify storage powerpack:data lookup.stack[0].node.tmp set from storage powerpack:data lookup.stack[0].node.right.right
data remove storage powerpack:data lookup.stack[0].node.right
data modify storage powerpack:data lookup.stack[0].node.right set from storage powerpack:data lookup.stack[0].node.tmp
data remove storage powerpack:data lookup.stack[0].node.tmp