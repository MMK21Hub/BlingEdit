scoreboard players set @e[type=minecraft:player,limit=1,scores={mai_scratch0=1}] window 3
scoreboard players set @s 1xyz 0
scoreboard players operation Global tx = Global x
scoreboard players operation Global ty = Global y
scoreboard players operation Global tz = Global z
scoreboard players set Global mai_scratch1 1000
scoreboard players operation Global tx /= Global mai_scratch1
scoreboard players operation Global ty /= Global mai_scratch1
scoreboard players operation Global tz /= Global mai_scratch1
# scoreboard players set @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] source 1
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] run function blingedit:clear

execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..,language=0}] run function blingedit:interface/en/1st_2
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..,language=1}] run function blingedit:interface/language.pack/1st_2
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..,language=2}] run function blingedit:interface/rus/1st_2

execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..,language=0}] run function blingedit:interface/en/2nd_1
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..,language=1}] run function blingedit:interface/language.pack/2nd_1
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..,language=2}] run function blingedit:interface/rus/2nd_1

execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] run function blingedit:tell_actions