# Power Pack
Power Pack is a Minecraft Data Pack containing several tools and APIs, allowing you to create data packs faster and unlock more creativity.

## Run load before tick
The function tag `#minecraft:tick` actually runs before `#minecraft:load` in the same data pack, which can cause some trouble. By using `#powerpack:load` and `#powerpack:tick` it's guaranteed that they will run in the right order.