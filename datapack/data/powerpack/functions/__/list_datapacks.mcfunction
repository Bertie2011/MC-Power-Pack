tellraw @s {"text":"The following data packs are enabled:"}
tellraw @s {"nbt":"datapacks[].creditsText","storage":"powerpack:data","interpret":true,"separator":{"text":" || ","color":"white"}}
scoreboard players reset @s pp.datapacks