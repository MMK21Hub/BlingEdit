execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
execute unless score @s window matches 15.. run scoreboard players set @s brush_mode 0
scoreboard players reset @s options_page
execute unless score @s window matches 17..18 run function blingedit:cancel
function blingedit:clear
execute unless score @s window matches 17..18 run scoreboard players set @s window 15
execute if score @s window matches 17..18 run function blingedit:replace_random
function blingedit:randomize_menu