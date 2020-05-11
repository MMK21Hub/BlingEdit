function blingedit:check_loaded
execute if score Global loaded matches 1.. run function blingedit:execute128_ln1026
execute unless score Global loaded matches 1 as @s[scores={language=0}] run function blingedit:interface/en/replace_1
execute unless score Global loaded matches 1 as @s[scores={language=1}] run function blingedit:interface/language.pack/replace_1
execute unless score Global loaded matches 1 as @s[scores={language=2}] run function blingedit:interface/rus/replace_1
execute unless score Global loaded matches 1 run function blingedit:tell_actions