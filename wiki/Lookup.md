# NBT lookup using scoreboard values
Power Pack makes it possible to select and edit NBT values based on their scoreboard value key. All operations consist of setting the input parameters (some are in data storage, others are on the scoreboard), running the function and finally copy the output data to somewhere safe.

## Operations
The following operations are available. Make sure to set the input first, then call the function and finally use the output.

function|input|output
-|-|-
`powerpack:lookup/set` | Storage<br>`powerpack:data lookup.base`<br>This is the base NBT that will be modified.<br><br>Storage<br>`powerpack:data lookup.arg`<br>This is the NBT that will be inserted or set for a certain key.<br><br>Scoreboard<br>`#key pp.lookup`<br>This is the key that the NBT will be saved  under.|Storage<br>`powerpack:data lookup.out`<br>Contains the modified base NBT.<br><br>Scoreboard<br>`#success pp.lookup`<br>1 if key already existed and value has been replaced, 0 if key did not exist and value has been inserted.
`powerpack:lookup/set_key`|Storage<br>`powerpack:data lookup.base`<br>This is the base NBT in which an item with the specified key is renamed.<br><br>Scoreboard<br>`#key pp.lookup`<br>This is the key that will be renamed.<br><br>Scoreboard<br>`#new_key pp.lookup`<br>This is the new name of the key.|Storage<br>`powerpack:data lookup.out`<br>Contains the modified base NBT.<br><br>Scoreboard<br>`#success pp.lookup`<br>1 if key existed, 0 if key did not exist.
`powerpack:lookup/get`|Storage<br>`powerpack:data lookup.base`<br>This is the base NBT that the key will be retrieved from.<br><br>Scoreboard<br>`#key pp.lookup`<br>This is the key that will be retrieved.|Storage<br>`powerpack:data lookup.out`<br>Contains the NBT data that was stored in the node with the specified key.<br><br>Scoreboard<br>`#success pp.lookup`<br>1 if key existed, 0 if key did not exist.
`powerpack:lookup/delete`|Storage<br>`powerpack:data lookup.base`<br>This is the base NBT that the key will be removed from.<br><br>Scoreboard<br>`#key pp.lookup`<br>This is the key that will be removed.|Scoreboard<br>`#success pp.lookup`<br>1 if key existed, 0 if key did not exist.

## Alternative Implementations
The current implemenation uses an array that is being iterated over. To select an item, each item in an array is removed until the desired item is found. Then the data inside the item is copied into the `out` storage.

Solution|Disadvantages
-|-
Naive implementation | A quick implemenation might just delete/move the first item of an array. Instead the last item is moved, since in most programming languages this is faster when it comes to arrays. Also, when the element is found, the rest is copied over to the output with a single command instead of one by one.
Array Filters | Some datapacks like [PlayerDB](https://github.com/rx-modules/PlayerDB) claim to be faster, but use array filters (`array[{nbtKey:"value"}]`) which cause the entire array to be iterated. So looking at performance behind the minecraft commands, its not faster than just simply iterating the array once.
Binary Search Tree | Another attempt for improved performance is the Binary Search Tree. Although theoretically it could have better performance for a large number of items, it has worse performance for smaller items due to its complexity. This caused development of this data structure to be halted, but the draft is still available [here](../draft/binary%20tree%20lookup//todo.md).