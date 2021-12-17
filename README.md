# Power Pack
Power Pack is a Minecraft Data Pack containing several tools and APIs, allowing you to create data packs faster and unlock more creativity.

## Contents
- [Power Pack](#power-pack)
  - [Contents](#contents)
  - [Load messages](#load-messages)
  - [Data Pack Meta Data](#data-pack-meta-data)
  - [Run load before tick](#run-load-before-tick)
  - [Random generator](#random-generator)
  - [Player Ids](#player-ids)
  - [NBT Lookup](#nbt-lookup)
  - [Player NBT](#player-nbt)

## Load messages
The `/reload` command does not notify the executer when the reload finished. The `/function reload` command wraps `/reload` in nicer start and end messages.

## Data Pack Meta Data
You can attach meta data to your data pack using the following command:
```
data modify storage powerpack:data datapacks append value {version:1,creditsText:'<JSON TEXT>'}
``` 
Running `/trigger pp.datapacks` will list all enabled data packs using the `creditsText`. Also if the wrong version of Power Pack is installed, all users will be notified.

## Run load before tick
The function tag `#minecraft:tick` actually runs before `#minecraft:load` in the same data pack, which can cause some trouble. By using `#powerpack:load` and `#powerpack:tick` it's guaranteed that they will run in the right order.

## Random generator
You can run a command with a certain chance using `execute if predicate powerpack:random`. Define the chance by setting `#chance pp.random` on the scoreboard to a number between 0 and 1 000 000, this means that for a 1% chance a score of 10 000 should be used and for 50% chance a score of 500 000 should be used.

To generate a random number, set both `#min pp.random` (set even if it's 0, inclusive) and `#max pp.random` (inclusive). Then call `function powerpack:random`. The resulting random number can be found in `#out pp.random`.

For more information, head over to the related [wiki](./wiki/Random.md) file.

## Player Ids
Each player gets a unique id in the `pp.pid` objective. The ids can be used to for example check for ownership with `execute if score @s pp.pid = @e[...] my_pack.owned_by` or remember a player without giving them a tag and later finding them with `execute as @a if score @s pp.pid = #that_one_player my_pack.tmp`.

## NBT Lookup
Selecting an NBT value based on a variable is very difficult to do, sometimes even deemed impossible. Power Pack provides a way to retrieve and edit NBT values based on a scoreboard value. For more information, head over to the related [wiki](./wiki/Lookup.md) file.

## Player NBT
Power pack provides a way to store player specific NBT data. It uses both the Player Id and NBT Lookup components to provide a simplified API and built-in storage for the data. For more information, head over to the related [wiki](./wiki/PlayerNBT.md) file.