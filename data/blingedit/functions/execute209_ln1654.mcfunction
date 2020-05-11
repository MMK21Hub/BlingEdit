function blingedit:clear
execute as @s[scores={language=0}] run function blingedit:interface/en/filling
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/filling
execute as @s[scores={language=2}] run function blingedit:interface/rus/filling
tellraw @s ["\n"]

function blingedit:tell_actions
bossbar set progress players @s
function blingedit:store_tile_drops
scoreboard players add @e _age 1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
scoreboard players add @e _age 1
execute if score @s wall_mode matches 0 as @e[scores={_age=1}] run function blingedit:execute208_ln1659
execute if score @s wall_mode matches 1 run function blingedit:wall_mode_1
execute if score @s wall_mode matches 2 run function blingedit:wall_mode_2
execute if score @s wall_mode matches 3 run function blingedit:wall_mode_3

function blingedit:restore_tile_drops
scoreboard players set @s window 3
scoreboard players set @s state 3

function blingedit:clear

execute as @s[scores={language=0}] run function blingedit:interface/en/filling
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/filling
execute as @s[scores={language=2}] run function blingedit:interface/rus/filling

execute as @s[scores={language=0}] run function blingedit:interface/en/fill_feedback
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/fill_feedback
execute as @s[scores={language=2}] run function blingedit:interface/rus/fill_feedback
function blingedit:tell_actions