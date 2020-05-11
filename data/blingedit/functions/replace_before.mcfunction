execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
scoreboard players reset @s options_page
execute unless score Global has_box matches 1.. run function blingedit:error
execute unless score Global has_box matches 1.. run function blingedit:tell_actions
execute if score Global has_box matches 1.. run function blingedit:clear
execute if score Global has_box matches 1.. unless score @s state matches 7 run function blingedit:replace
execute if score Global has_box matches 1.. as @s[scores={state=7}] run function blingedit:replace_2
execute if score Global has_box matches 1.. as @s[scores={state=7}] run function blingedit:tell_actions
gamerule sendCommandFeedback false