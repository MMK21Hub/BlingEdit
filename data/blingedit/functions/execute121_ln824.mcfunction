execute as @s run function blingedit:get_minmax
execute unless score Global has_box matches 1.. run function blingedit:error
execute if score Global has_box matches 1.. run function blingedit:execute120_ln830