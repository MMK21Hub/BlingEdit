scoreboard players operation Global percent = Global z
scoreboard players operation Global percent -= Global zmin
scoreboard players operation Global percent *= c100 Constant
scoreboard players operation Global mai_scratch3 = Global zmax
scoreboard players operation Global mai_scratch3 -= Global zmin
scoreboard players operation Global percent /= Global mai_scratch3
execute store result bossbar progress value run scoreboard players get Global percent
scoreboard players operation Global y = Global ymin
scoreboard players operation Global mai_scratch3 = Global ymax
scoreboard players set Global mai_scratch4 1000

execute if score Global y <= Global mai_scratch3 run function blingedit:for206_3

scoreboard players operation Global z += Global mai_scratch2

execute if score Global z <= Global mai_scratch1 run function blingedit:for205_3