function blingedit:clear
execute as @s[scores={language=0}] run function blingedit:interface/en/block_selected
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/block_selected
execute as @s[scores={language=2}] run function blingedit:interface/rus/block_selected
function blingedit:replace_random
function blingedit:randomize_menu