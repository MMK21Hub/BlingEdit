execute as @s run function blingedit:get_minmax
execute unless score Global has_box matches 1.. run function blingedit:error
execute unless score Global has_box matches 1.. run function blingedit:tell_actions
execute if score Global has_box matches 1.. run function blingedit:execute079_ln661