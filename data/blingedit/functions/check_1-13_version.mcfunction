execute at @s run setblock ~ ~1 ~ minecraft:sign
execute at @s if block ~ ~1 ~ minecraft:sign run scoreboard players set Global mc_version 113
execute at @s if block ~ ~1 ~ minecraft:sign run setblock ~ ~1 ~ minecraft:air