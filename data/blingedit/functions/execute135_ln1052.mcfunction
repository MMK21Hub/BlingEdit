function blingedit:clear

execute as @s[scores={language=0}] run function blingedit:interface/en/replacing
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/replacing
execute as @s[scores={language=2}] run function blingedit:interface/rus/replacing
tellraw @s ["\n"]
function blingedit:tell_actions
bossbar set progress players @s
function blingedit:store_tile_drops
scoreboard players set Global count 0
scoreboard players add @e _age 1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
scoreboard players add @e _age 1
execute as @e[scores={_age=1}] run function blingedit:execute134_ln1058
function blingedit:restore_tile_drops

function blingedit:clear
execute as @s[scores={language=0}] run function blingedit:interface/en/replacing
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/replacing
execute as @s[scores={language=2}] run function blingedit:interface/rus/replacing

execute as @s[scores={language=0}] run function blingedit:interface/en/replace_feedback
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/replace_feedback
execute as @s[scores={language=2}] run function blingedit:interface/rus/replace_feedback

scoreboard players set @s window 3
scoreboard players set @s state 3
function blingedit:tell_actions