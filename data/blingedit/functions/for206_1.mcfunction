scoreboard players operation Global y = Global ymin
scoreboard players operation Global mai_scratch5 = Global ymax

scoreboard players set Global mai_scratch6 1000
execute if score Global x < Global x_wall_min if score Global y <= Global mai_scratch5 run function blingedit:for207_1
execute if score Global x > Global x_wall_max if score Global y <= Global mai_scratch5 run function blingedit:for207_1
execute if score Global z < Global z_wall_min if score Global y <= Global mai_scratch5 run function blingedit:for207_1
execute if score Global z > Global z_wall_max if score Global y <= Global mai_scratch5 run function blingedit:for207_1

scoreboard players operation Global z += Global mai_scratch4
execute if score Global z <= Global mai_scratch3 run function blingedit:for206_1