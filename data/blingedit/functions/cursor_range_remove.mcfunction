scoreboard players set @s[scores={cursor_range=5}] cursor_range 25
scoreboard players remove @s cursor_range 5
scoreboard players set @s cursor_change 1
execute if score @s options_page matches 1..2 run function blingedit:options
execute unless score @s options_page matches 1..2 run function blingedit:execute110