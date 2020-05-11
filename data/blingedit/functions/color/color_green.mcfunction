execute if score @s edit_color matches 0 run team modify source color green
execute if score @s edit_color matches 1 run team modify dest color green
execute if score @s edit_color matches 2 run team modify highlight color green
execute if score @s edit_color matches 3 run team modify moving color green
scoreboard players set @s[scores={edit_color=0}] color_box 4
scoreboard players set @s[scores={edit_color=1}] color_clone 4
scoreboard players set @s[scores={edit_color=2}] color_hglt 4
scoreboard players set @s[scores={edit_color=3}] color_edit 4
execute if score @s edit_color matches 0 run scoreboard players set Global color_box 1
execute if score @s edit_color matches 1 run scoreboard players set Global color_clone 1
execute if score @s edit_color matches 2 run scoreboard players set Global color_hglt 1
execute if score @s edit_color matches 3 run scoreboard players set Global color_edit 1
function blingedit:clear
function blingedit:options_2