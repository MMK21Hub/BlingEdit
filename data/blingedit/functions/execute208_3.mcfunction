scoreboard players operation Global z = Global zmin
scoreboard players operation Global mai_scratch1 = Global zmax
scoreboard players set Global mai_scratch2 1000
execute if score Global z <= Global mai_scratch1 run function blingedit:for205_3
kill @s