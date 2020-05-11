scoreboard players set @s raycast_select 0
scoreboard players set Global handled 1
scoreboard players set @s cursor_change 1
execute if score @s options_page matches 1..2 run function blingedit:options
execute unless score @s options_page matches 1..2 run function blingedit:execute110