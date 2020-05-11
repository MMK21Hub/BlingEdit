function blingedit:check_1-13_version
execute if score Global mc_version matches 113 if score @s language matches 0 run function blingedit:interface/en/instructions_1-13
execute if score Global mc_version matches 114.. if score @s language matches 0 run function blingedit:interface/en/instructions_1-14
execute if score Global mc_version matches 113 if score @s language matches 1 run function blingedit:interface/language.pack/instructions_1-13
execute if score Global mc_version matches 114.. if score @s language matches 1 run function blingedit:interface/language.pack/instructions_1-14
execute if score Global mc_version matches 113 if score @s language matches 2 run function blingedit:interface/rus/instructions_1-13
execute if score Global mc_version matches 114.. if score @s language matches 2 run function blingedit:interface/rus/instructions_1-14
gamerule sendCommandFeedback false