execute unless score @s cursor_range matches 0.. run scoreboard players set @s cursor_range 5
execute unless score @s cursor_inside matches 0.. run scoreboard players set @s cursor_inside 1
scoreboard players set @s state 1
execute at @s positioned ~ ~200 ~ run function blingedit:execute160_ln1447
execute unless score @s click_detector matches 0 at @s positioned ~ ~200 ~ run function blingedit:execute008_ln126
execute if score @s edit matches 1 at @s positioned ~ ~200 ~ run function blingedit:execute008_ln126
scoreboard players operation Global _id = @s pick1
#execute as @e if score @s _id = Global _id run function blingedit:execute162_ln1464