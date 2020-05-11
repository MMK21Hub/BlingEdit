function blingedit:check_loaded
execute unless score Global loaded matches 1 as @s[scores={language=0}] run function blingedit:interface/en/replace_2
execute unless score Global loaded matches 1 as @s[scores={language=1}] run function blingedit:interface/language.pack/replace_2
execute unless score Global loaded matches 1 as @s[scores={language=2}] run function blingedit:interface/rus/replace_2
execute unless score Global loaded matches 1 run function blingedit:tell_actions
execute if score Global loaded matches 1.. run function blingedit:execute136_ln1047