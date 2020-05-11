scoreboard players reset @s options_page
function blingedit:clear
execute as @s[scores={state=4,language=0}] run function blingedit:interface/en/1st_2
execute as @s[scores={state=4,language=1}] run function blingedit:interface/language.pack/1st_2
execute as @s[scores={state=4,language=2}] run function blingedit:interface/rus/1st_2
tellraw @s[scores={state=4}] ["\n"]
execute if score @s state matches ..4 run function blingedit:tell_actions
execute if score @s state matches 5 run function blingedit:fill
execute if score @s state matches 6 run function blingedit:replace_before
execute if score @s state matches 7 run function blingedit:execute128_ln1026
execute if score @s state matches 8..9 run function blingedit:clone_text
execute if score @s window matches 15..18 run function blingedit:randomize_menu_before
execute if score @s state matches 11 run function blingedit:clone_text
gamerule sendCommandFeedback false