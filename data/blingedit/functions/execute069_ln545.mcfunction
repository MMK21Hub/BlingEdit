execute unless score @s brush_mode matches 1 run scoreboard players set @s state 1
function blingedit:clear
execute as @s[scores={language=0}] run function blingedit:interface/en/replacing
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/replacing
execute as @s[scores={language=2}] run function blingedit:interface/rus/replacing
tellraw @s ["\n"]
execute if score @s random_replace matches 1 run function blingedit:replace_random
function blingedit:randomize_menu

execute as @s run function blingedit:get_minmax
execute if score Global has_box matches 1.. run function blingedit:execute068_ln547

execute unless score @s random_replace matches 1 run scoreboard players set @s window 15
execute unless score @s brush_mode matches 1 run scoreboard players set @s state 3
function blingedit:clear
execute as @s[scores={language=0}] run function blingedit:interface/en/replacing
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/replacing
execute as @s[scores={language=2}] run function blingedit:interface/rus/replacing

execute as @s[scores={language=0}] run function blingedit:interface/en/replace_random_feedback
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/replace_random_feedback
execute as @s[scores={language=2}] run function blingedit:interface/rus/replace_random_feedback
execute if score @s random_replace matches 1 run function blingedit:replace_random
function blingedit:randomize_menu