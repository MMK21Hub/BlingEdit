function blingedit:check_loaded
execute unless score Global loaded matches 1.. run function blingedit:error_random_load
execute if score Global loaded matches 1.. run function blingedit:execute069_ln545