execute unless score @s language matches 0.. run scoreboard players set @s language 0
execute as @s[scores={language=0}] run function blingedit:interface/en/difficulty_error
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/difficulty_error
execute as @s[scores={language=2}] run function blingedit:interface/rus/difficulty_error
scoreboard players set @s state 0