execute if score @s edit_color matches 0 run team modify source color dark_red
execute if score @s edit_color matches 1 run team modify dest color dark_red
execute if score @s edit_color matches 2 run team modify highlight color dark_red
execute if score @s edit_color matches 3 run team modify moving color dark_red
scoreboard players set @s[scores={edit_color=0}] color_box 0
scoreboard players set @s[scores={edit_color=1}] color_clone 0
scoreboard players set @s[scores={edit_color=2}] color_hglt 0
scoreboard players set @s[scores={edit_color=3}] color_edit 0
execute if score @s edit_color matches 0 run scoreboard players set Global color_box 1
execute if score @s edit_color matches 1 run scoreboard players set Global color_clone 1
execute if score @s edit_color matches 2 run scoreboard players set Global color_hglt 1
execute if score @s edit_color matches 3 run scoreboard players set Global color_edit 1
function blingedit:clear
function blingedit:options_2