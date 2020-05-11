execute at @s run setblock ~ ~1 ~ minecraft:honey_block
execute at @s if block ~ ~1 ~ minecraft:honey_block run scoreboard players set Global mc_version 115
execute at @s if block ~ ~1 ~ minecraft:honey_block run setblock ~ ~1 ~ minecraft:air