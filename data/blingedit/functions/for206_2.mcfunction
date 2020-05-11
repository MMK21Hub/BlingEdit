scoreboard players operation Global z = Global zmin
scoreboard players operation Global mai_scratch5 = Global zmax

scoreboard players set Global mai_scratch6 1000
execute if score Global x < Global x_wall_min if score Global z <= Global mai_scratch5 run function blingedit:for207_2
execute if score Global x > Global x_wall_max if score Global z <= Global mai_scratch5 run function blingedit:for207_2
execute if score Global y < Global y_wall_min if score Global z <= Global mai_scratch5 run function blingedit:for207_2
execute if score Global y > Global y_wall_max if score Global z <= Global mai_scratch5 run function blingedit:for207_2

scoreboard players operation Global y += Global mai_scratch4
execute if score Global y <= Global mai_scratch3 run function blingedit:for206_2