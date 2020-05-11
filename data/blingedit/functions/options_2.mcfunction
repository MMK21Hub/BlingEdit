execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
# scoreboard players set @s source 0
scoreboard players set @s options_page 2
function blingedit:clear
execute as @s[scores={language=0}] run function blingedit:interface/en/options_2_top
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/options_2_top
execute as @s[scores={language=2}] run function blingedit:interface/rus/options_2_top

execute if score Global language_pack matches 0 as @s[scores={language=0}] run function blingedit:interface/en/options_mid
execute if score Global language_pack matches 0 as @s[scores={language=2}] run function blingedit:interface/rus/options_mid
execute unless score Global language_pack matches ..0 run function blingedit:interface/language.pack/options_mid

execute as @s[scores={language=0}] run function blingedit:interface/en/options_2_bottom
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/options_2_bottom
execute as @s[scores={language=2}] run function blingedit:interface/rus/options_2_bottom
function blingedit:tell_actions
gamerule sendCommandFeedback false