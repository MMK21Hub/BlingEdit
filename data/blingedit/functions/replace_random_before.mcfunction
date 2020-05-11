execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
function blingedit:clear
execute unless score @s state matches 3..4 unless score @s state matches 12 run function blingedit:error
execute if score @s state matches 3..4 run function blingedit:replace_random
execute if score @s state matches 12 run function blingedit:replace_random
function blingedit:randomize_menu