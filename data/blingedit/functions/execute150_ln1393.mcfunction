execute if score @s fast_switching matches 3 run scoreboard players set @s cursor_inside 0
execute unless score @s fast_switching matches 3 run scoreboard players set @s raycast_select 0
scoreboard players set @s cursor_change 1
execute if score @s options_page matches 1..2 run function blingedit:options
execute unless score @s options_page matches 1..2 run function blingedit:execute110