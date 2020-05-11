scoreboard players set @s window 17
scoreboard players set @s rand_replace 1
execute unless score @s state matches 12 run scoreboard players set @s state 10
execute as @s[scores={language=0}] run function blingedit:interface/en/replace_random
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/replace_random
execute as @s[scores={language=2}] run function blingedit:interface/rus/replace_random
gamerule sendCommandFeedback false