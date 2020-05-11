scoreboard players add @e _age 1
execute unless score @s click_detector matches 0 run summon minecraft:slime ~ ~ ~ {ActiveEffects: [{Id: 12b, Amplifier: 4b, Duration: 2147483647, ShowParticles: 0b},{Id: 13b, Amplifier: 4b, Duration: 2147483647, ShowParticles: 0b},{Id: 14b, Duration: 2147483647, ShowParticles: 0b}],CustomName:"\"ClickDetector\"", Tags:["ClickDetector"], NoGravity:1b, NoAI: 1b, Invisible:1b, Silent:1b, Size:2, AbsorptionAmount: 100f}
scoreboard players add @e _age 1
scoreboard players add Global _unique 1
scoreboard players operation @e[type=minecraft:slime,tag=ClickDetector,scores={_age=1}] _id = Global _unique
scoreboard players operation Global mai_scratch1 = Global _unique
scoreboard players operation @s click = Global mai_scratch1
scoreboard players operation Global _id = @s click
execute as @e if score @s _id = Global _id run team join no_collision