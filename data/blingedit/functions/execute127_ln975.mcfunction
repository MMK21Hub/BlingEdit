scoreboard players set @s state 1
execute as @s[scores={language=0}] run function blingedit:interface/en/deleting
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/deleting
execute as @s[scores={language=2}] run function blingedit:interface/rus/deleting
tellraw @s ["\n"]
function blingedit:tell_actions
bossbar set progress players @s
function blingedit:store_tile_drops
scoreboard players add @e _age 1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
scoreboard players add @e _age 1
execute as @e[scores={_age=1}] run function blingedit:execute126_ln979
function blingedit:restore_tile_drops

function blingedit:clear
execute as @s[scores={language=0}] run function blingedit:interface/en/deleting
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/deleting
execute as @s[scores={language=2}] run function blingedit:interface/rus/deleting

execute as @s[scores={language=0}] run function blingedit:interface/en/delete_feedback
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/delete_feedback
execute as @s[scores={language=2}] run function blingedit:interface/rus/delete_feedback
scoreboard players set @s state 3