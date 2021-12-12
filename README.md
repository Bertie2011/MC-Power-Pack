# Power Pack
Power Pack is a Minecraft Data Pack containing several tools and APIs, allowing you to create data packs faster and unlock more creativity.

## Contents
- [Power Pack](#power-pack)
  - [Contents](#contents)
  - [Load messages](#load-messages)
  - [Run load before tick](#run-load-before-tick)
  - [Random generator](#random-generator)

## Load messages
The `/reload` command does not notify the executer when the reload finished. The `powerpack:reload` function wraps `/reload` in nicer start and end messages. 

## Run load before tick
The function tag `#minecraft:tick` actually runs before `#minecraft:load` in the same data pack, which can cause some trouble. By using `#powerpack:load` and `#powerpack:tick` it's guaranteed that they will run in the right order.

## Random generator
You can run a command with a certain chance using `execute if predicate powerpack:random`. Define the chance by setting `#chance pp.random` on the scoreboard to a number between 0 and 1 000 000, this means that for a 1% chance a score of 10 000 should be used and for 50% chance a score of 500 000 should be used.

To generate a random number, set both `#min pp.random` (set even if it's 0, inclusive) and `#max pp.random` (inclusive). Then call `function powerpack:random`. The resulting random number can be found in `#out pp.random`.

For more information, head over to the related [wiki](./wiki/Random.md) file.