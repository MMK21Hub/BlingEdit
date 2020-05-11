execute store result score Global x run data get entity @s Pos[0] 1000
execute store result score Global y run data get entity @s Pos[1] 1000
execute store result score Global z run data get entity @s Pos[2] 1000
scoreboard players set Global mai_scratch1 1000
scoreboard players operation Global x /= Global mai_scratch1
scoreboard players operation Global y /= Global mai_scratch1
scoreboard players operation Global z /= Global mai_scratch1
execute as @a unless score @s language matches 0.. run scoreboard players set @s language 0
scoreboard players set @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] used 1
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] run function blingedit:clear

execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..,language=0}] run function blingedit:interface/en/1st_1
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..,language=1}] run function blingedit:interface/language.pack/1st_1
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..,language=2}] run function blingedit:interface/rus/1st_1

execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] store result score @s 1x run scoreboard players get Global x
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] store result score @s 1y run scoreboard players get Global y
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] store result score @s 1z run scoreboard players get Global z
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] run scoreboard players set @s 1xyz 1

execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] run function blingedit:tell_actions