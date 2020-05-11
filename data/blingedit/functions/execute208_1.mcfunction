scoreboard players operation Global x = Global xmin
scoreboard players operation Global mai_scratch1 = Global xmax
scoreboard players set Global mai_scratch2 1000
execute if score Global x <= Global mai_scratch1 run function blingedit:for205_1
kill @s