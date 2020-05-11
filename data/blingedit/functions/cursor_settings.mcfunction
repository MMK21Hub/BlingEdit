execute unless score @s language matches 0.. run scoreboard players set @s language 0
execute as @s unless score @s raycast_select matches 0.. run scoreboard players set @s raycast_select 0
execute if score @s language matches 0 run function blingedit:interface/en/cursor_settings
execute if score @s language matches 1 run function blingedit:interface/language.pack/cursor_settings
execute if score @s language matches 2 run function blingedit:interface/rus/cursor_settings