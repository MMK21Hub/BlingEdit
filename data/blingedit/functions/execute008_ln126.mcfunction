scoreboard players add @e _age 1
summon minecraft:slime ~ ~ ~ {ActiveEffects: [{Id: 12b, Amplifier: 4b, Duration: 2147483647, ShowParticles: 0b},{Id: 13b, Amplifier: 4b, Duration: 2147483647, ShowParticles: 0b},{Id: 14b, Duration: 2147483647, ShowParticles: 0b}], CustomName:"\"ClickDetector\"", Tags:["ClickDetector"], NoGravity:1b, NoAI: 1b, Invisible:1b, Silent:1b, Size:2, AbsorptionAmount: 100f}
scoreboard players add @e _age 1
scoreboard players add Global _unique 1
scoreboard players operation @e[type=minecraft:slime,tag=ClickDetector,scores={_age=1}] _id = Global _unique
scoreboard players operation Global cre_scratch0 = Global _unique
scoreboard players operation @s click = Global cre_scratch0
execute at @s positioned ~ ~1.6 ~ positioned ^ ^ ^2 positioned ~ ~-0.6 ~ run function blingedit:execute007_ln128
scoreboard players set @s detector 1