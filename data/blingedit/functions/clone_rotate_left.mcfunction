execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
scoreboard players remove @s clone_rotation 90
execute if score @s clone_rotation matches ..-1 run scoreboard players add @s clone_rotation 360
scoreboard players operation Global _id = @s to_display
execute as @e if score @s _id = Global _id run function blingedit:execute047_ln432
execute as @s run function blingedit:rotate_dest_horizontal
gamerule sendCommandFeedback false