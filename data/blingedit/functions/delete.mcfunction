execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
scoreboard players reset @s options_page
scoreboard players set @s brush_mode 0
function blingedit:cancel
function blingedit:clear
execute as @s run function blingedit:get_minmax
execute if score Global has_box matches 1.. run function blingedit:execute127_ln975
execute unless score Global has_box matches 1.. run function blingedit:error
function blingedit:tell_actions
gamerule sendCommandFeedback false