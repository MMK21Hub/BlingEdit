setblock 0 1 0 stone
execute store success score Global loaded run setblock 0 1 0 sandstone
execute unless score Global loaded matches 1 as @s[scores={language=0}] run function blingedit:interface/en/chunk_load
execute unless score Global loaded matches 1 as @s[scores={language=1}] run function blingedit:interface/language.pack/chunk_load
execute unless score Global loaded matches 1 as @s[scores={language=2}] run function blingedit:interface/rus/chunk_load
execute unless score Global loaded matches 1.. run setblock ~ ~ ~ air