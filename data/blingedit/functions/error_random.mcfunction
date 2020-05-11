function blingedit:clear
execute as @s[scores={language=0}] run function blingedit:interface/en/error_random
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/error_random
execute as @s[scores={language=2}] run function blingedit:interface/rus/error_random
function blingedit:error_random_load