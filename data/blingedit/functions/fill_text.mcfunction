scoreboard players set @s window 9
execute as @s[scores={language=0}] run function blingedit:interface/en/fill
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/fill
execute as @s[scores={language=2}] run function blingedit:interface/rus/fill
function blingedit:tell_actions