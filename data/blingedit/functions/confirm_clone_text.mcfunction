function blingedit:clear
execute as @s[scores={language=0}] run function blingedit:interface/en/clone_error
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/clone_error
execute as @s[scores={language=2}] run function blingedit:interface/rus/clone_error
function blingedit:clone_text