scoreboard players operation Global x = Global xmin
scoreboard players operation Global mai_scratch5 = Global xmax

scoreboard players set Global mai_scratch6 1000
execute if score Global z < Global z_wall_min if score Global x <= Global mai_scratch5 run function blingedit:for207_3
execute if score Global z > Global z_wall_max if score Global x <= Global mai_scratch5 run function blingedit:for207_3
execute if score Global y < Global y_wall_min if score Global x <= Global mai_scratch5 run function blingedit:for207_3
execute if score Global y > Global y_wall_max if score Global x <= Global mai_scratch5 run function blingedit:for207_3

scoreboard players operation Global y += Global mai_scratch4
execute if score Global y <= Global mai_scratch3 run function blingedit:for206_3