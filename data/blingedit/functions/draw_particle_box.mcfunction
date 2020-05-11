scoreboard players add @e _age 1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
scoreboard players add @e _age 1
execute if score @s particles matches 1 as @e[scores={_age=1}] run function blingedit:particle1
execute if score @s particles matches 2 as @e[scores={_age=1}] run function blingedit:particle2
execute if score @s particles matches 3 as @e[scores={_age=1}] run function blingedit:particle3
execute if score @s particles matches 4 as @e[scores={_age=1}] run function blingedit:particle4
execute if score @s particles matches 5 as @e[scores={_age=1}] run function blingedit:particle5
execute if score @s particles matches 6 as @e[scores={_age=1}] run function blingedit:particle6
execute if score @s particles matches 7 as @e[scores={_age=1}] run function blingedit:particle7
execute if score @s particles matches 8 as @e[scores={_age=1}] run function blingedit:particle8
execute if score @s particles matches 9 as @e[scores={_age=1}] run function blingedit:particle9