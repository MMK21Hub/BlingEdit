scoreboard players set Global okay_rotation 1
execute if score @s clone_rotation matches 90..90 run scoreboard players set Global okay_rotation 0
execute if score @s clone_rotation matches 270..270 run scoreboard players set Global okay_rotation 0
execute if score Global okay_rotation matches 1.. run function blingedit:execute095_ln773
function blingedit:clear
execute unless score Global okay_rotation matches 1 as @s[scores={language=0}] run function blingedit:interface/en/clone_rotation_error
execute unless score Global okay_rotation matches 1 as @s[scores={language=1}] run function blingedit:interface/language.pack/clone_rotation_error
execute unless score Global okay_rotation matches 1 as @s[scores={language=2}] run function blingedit:interface/rus/clone_rotation_error
function blingedit:clone_text