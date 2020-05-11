execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1.. run function blingedit:sound
execute unless score @s[scores={state=1..3}] window matches 19..20 run function blingedit:s_1
execute unless score @s[scores={state=4}] window matches 19..20 run function blingedit:s_4
execute unless score @s[scores={state=12}] window matches 19..20 run function blingedit:s_4
execute if score @s state matches 5 run function blingedit:s_5
execute if score @s state matches 6..7 run function blingedit:s_6
execute if score @s window matches 7..8 run function blingedit:s_9
execute if score @s window matches 15..16 run function blingedit:w_15
execute if score @s window matches 17..18 run function blingedit:s_10
execute if score @s window matches 19..20 run function blingedit:w_19