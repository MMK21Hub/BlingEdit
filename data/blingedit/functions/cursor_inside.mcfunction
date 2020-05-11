scoreboard players set @s raycast_select 1
scoreboard players set @s cursor_inside 1
scoreboard players set @s[scores={cursor_change=2}] cursor_change 3
execute if score @s options_page matches 1..2 run function blingedit:options
execute unless score @s options_page matches 1..2 run function blingedit:execute110
gamerule sendCommandFeedback false