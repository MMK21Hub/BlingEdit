scoreboard players operation Global x = Global p_xmin
scoreboard players operation Global dra_scratch0 = Global p_xmax
scoreboard players set Global dra_scratch1 200
execute if score Global dra_scratch1 matches ..-1 if score Global x >= Global dra_scratch0 run function blingedit:particles/particle8_1
execute if score Global dra_scratch1 matches 1.. if score Global x <= Global dra_scratch0 run function blingedit:particles/particle8_1
scoreboard players operation Global z = Global p_zmin
scoreboard players operation Global dra_scratch0 = Global p_zmax
scoreboard players set Global dra_scratch1 200
execute if score Global dra_scratch1 matches ..-1 if score Global z >= Global dra_scratch0 run function blingedit:particles/particle8_2
execute if score Global dra_scratch1 matches 1.. if score Global z <= Global dra_scratch0 run function blingedit:particles/particle8_2
scoreboard players operation Global y = Global p_ymin
scoreboard players operation Global dra_scratch0 = Global p_ymax
scoreboard players set Global dra_scratch1 200
execute if score Global dra_scratch1 matches ..-1 if score Global y >= Global dra_scratch0 run function blingedit:particles/particle8_3
execute if score Global dra_scratch1 matches 1.. if score Global y <= Global dra_scratch0 run function blingedit:particles/particle8_3
kill @s