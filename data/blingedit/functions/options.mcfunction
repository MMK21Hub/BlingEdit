execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1.. run function blingedit:sound
scoreboard players set @s options_page 1
function blingedit:clear
execute as @s[scores={language=0}] run function blingedit:interface/en/options_top
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/options_top
execute as @s[scores={language=2}] run function blingedit:interface/rus/options_top

execute if score Global language_pack matches 0 as @s[scores={language=0}] run function blingedit:interface/en/options_mid
execute if score Global language_pack matches 0 as @s[scores={language=2}] run function blingedit:interface/rus/options_mid
execute unless score Global language_pack matches ..0 run function blingedit:interface/language.pack/options_mid

execute as @s[scores={language=0}] run function blingedit:interface/en/options_bottom
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/options_bottom
execute as @s[scores={language=2}] run function blingedit:interface/rus/options_bottom
tellraw @s ""
function blingedit:tell_actions
gamerule sendCommandFeedback false