scoreboard players set Global click 1
data merge entity @s {"Glowing":0b}
tp @s ~ -200 ~
kill @s
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] run function blingedit:create_click