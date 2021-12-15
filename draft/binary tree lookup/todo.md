This folder contains functions to get and edit a binary search tree to lookup values.
From testing, a 3 layer tree (up to 7 items) results in about 60 commands for a simple get. Given that a simple array iteration consists of 2 commands (delete + recurse), it would need 30 items to come close to a simple array implementation. However, 30 items causes more layers in the tree and therefore even more commands. The tipping point is more likely to be 50 items or so.

In most cases this means that the array implementation is faster than the binary search tree and even in cases where the BST would be faster, the array version is not that slow, which is why the development of the binary search tree implementation is halted.

The current implementation allows get, set (insert/overwrite) and deletion of nodes with no children or a single child. It also has functions to navigate left/right/up while maintaining a stack (array) that traces the path to the selected node.

## Technical details
The lookup data structure is a Binary Search Tree, which allows for real `O(log(n))` lookup time complexity.

> A "Binary Search Tree" is a data structure in which each piece of data ("node") is assigned a value and left/right nodes. All left nodes have lower values, while all right nodes have higher values.
> 
> This means that we can find any node with a simple game of "higher or lower". For a structure of 100 items, the furthest node can be found using only 7 steps. In contrast, in a simple array of 100 items, a node that happens to be the furthest will be found after 100 steps.

### Data Structures
The following NBT structure is used to save entries.
```
# This is what a node looks like.
{
    value: 15,
    data: { key: "value" },
    left: <another node>,
    right: <another node>
}
```

The following NBT structure represents a path to any node, with every item being a left/right child of the previous.
```
# This is a stack.
[
    {
        pos: "root",
        node: <a node>
    },
    {
        pos: "left" | "right",
        node: <a node>
    }
]
```