scoreboard players operation Global vol = Global box_size_x
scoreboard players operation Global vol *= Global box_size_y
scoreboard players operation Global vol *= Global box_size_z
execute as @s[scores={language=0}] run function blingedit:interface/en/region_size
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/region_size
execute as @s[scores={language=2}] run function blingedit:interface/rus/region_size
