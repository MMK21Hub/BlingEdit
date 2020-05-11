scoreboard players set Global deleted 0
clear @a minecraft:command_block{BlingEdit_Uninstaller:1}
execute if score Global feedback matches 1 run gamerule sendCommandFeedback true
function blingedit:reset
function blingedit:check_1-13_version
function blingedit:check_1-15_version
function blingedit:sound
scoreboard players set @a state 0
execute as @a unless score @s language matches 0.. run scoreboard players set @s language 0
tellraw @s ""
function blingedit:tell_actions