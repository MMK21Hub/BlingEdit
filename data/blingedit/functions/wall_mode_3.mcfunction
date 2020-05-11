scoreboard players operation Global y_wall_min = Global ymin
scoreboard players operation Global y_wall_max = Global ymax
scoreboard players operation Global z_wall_min = Global zmin
scoreboard players operation Global z_wall_max = Global zmax

scoreboard players operation Global y_wall_min += @s wall_width
scoreboard players operation Global y_wall_max -= @s wall_width
scoreboard players operation Global z_wall_min += @s wall_width
scoreboard players operation Global z_wall_max -= @s wall_width

execute as @e[scores={_age=1}] run function blingedit:execute208_3