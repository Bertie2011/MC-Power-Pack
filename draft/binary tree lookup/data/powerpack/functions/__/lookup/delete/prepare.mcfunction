# Set the last element on the stack to be the first element.
data modify storage powerpack:data lookup.tmp set from storage powerpack:data lookup.stack[-1]
data modify storage powerpack:data lookup.stack set value []
data modify storage powerpack:data lookup.stack append from storage powerpack:data lookup.tmp
