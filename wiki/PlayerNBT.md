# Player NBT
Power Pack makes it possible to select and edit NBT values based on player IDs. You can obtain the ID of a certain player using the `pp.pid` objective. Since the storage is shared by all data packs, it's important that you put all data of a single datapack inside a single key in the player data.

All operations consist of setting the input parameters (some are in data storage, others are on the scoreboard) and running the function

## Operations
The following operations are available. Make sure to set the input first, then call the function and finally use the output.

function|input|output
-|-|-
`powerpack:pnbt/set` | Storage<br>`powerpack:data pnbt.selected`<br>This is the NBT that will be set for a certain player.<br><br>Scoreboard<br>`#key pp.pnbt`<br>This is the key belonging to the player.|
`powerpack:pnbt/get`| Scoreboard<br>`#key pp.pnbt`<br>This is the player id that will be retrieved.|Storage<br>`powerpack:data pnbt.selected`<br>Contains the NBT data that was stored for the specific player.<br><br>Empty compound ( `{}` ) if player had no data.
`powerpack:pnbt/delete`|Scoreboard<br>`#key pp.pnbt`<br>This is the key that will be removed.|

## Alternative Implementations
The current implemenation uses the [NBT Lookup Component](./Lookup.md). 

Solution|Disadvantages
-|-
Marker Entities | For each player, you could spawn a marker and teleport it to the player at all times. This creates a small amount of entity lag, which is best to be prevented.
Mapping IDs to Coordinates | Although a datapack like [EntityDB](https://github.com/hqics/entitydb) this allows for instant lookups, it does create the overhead of an entire new dimension with tile entities that need to be loaded.