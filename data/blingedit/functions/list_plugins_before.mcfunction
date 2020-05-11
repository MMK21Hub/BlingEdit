execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
function blingedit:cancel
function blingedit:clear
scoreboard players reset @s options_page
function blingedit:list_plugins