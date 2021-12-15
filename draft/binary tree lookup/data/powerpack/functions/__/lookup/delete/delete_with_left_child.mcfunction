# To be deleted node contains left child.
data modify storage powerpack:data lookup.stack[0].node.value set from storage powerpack:data lookup.stack[0].node.left.value
data modify storage powerpack:data lookup.stack[0].node.data set from storage powerpack:data lookup.stack[0].node.left.data
data modify storage powerpack:data lookup.stack[0].node.right set from storage powerpack:data lookup.stack[0].node.left.right
data modify storage powerpack:data lookup.stack[0].node.tmp set from storage powerpack:data lookup.stack[0].node.left.left
data remove storage powerpack:data lookup.stack[0].node.left
data modify storage powerpack:data lookup.stack[0].node.left set from storage powerpack:data lookup.stack[0].node.tmp
data remove storage powerpack:data lookup.stack[0].node.tmp