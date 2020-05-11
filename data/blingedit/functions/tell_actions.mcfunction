execute as @s[scores={language=0}] run function blingedit:interface/en/actions_top
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/actions_top
execute as @s[scores={language=2}] run function blingedit:interface/rus/actions_top
tellraw @s ""
execute unless score @s state matches 3 unless score @s state matches 8 run tellraw @s ["",{"text":"         [▲]          [▲]","color":"gray"}]
execute if score Global mc_version matches 113 unless score @s state matches 3 unless score @s state matches 8 run tellraw @s ["",{"text":"      [◀]   [▶]","color":"gray"}]
execute unless score Global mc_version matches 113 unless score @s state matches 3 unless score @s state matches 8 run tellraw @s ["",{"text":"     [◀]    [▶]","color":"gray"}]
execute unless score @s state matches 3 unless score @s state matches 8 run tellraw @s ["",{"text":"         [▼]          [▼]","color":"gray"}]
execute unless score @s state matches ..1 unless score @s state matches 4..7 unless score @s state matches 9..12 run tellraw @s ["",{"text":"         "},{"text":"[▲]","clickEvent":{"action":"run_command","value":"/function blingedit:move_forward"},"color":"aqua"},{"text":"          "},{"text":"[▲]","clickEvent":{"action":"run_command","value":"/function blingedit:move_up"},"color":"aqua"}]
execute if score Global mc_version matches 113 unless score @s state matches ..1 unless score @s state matches 4..7 unless score @s state matches 9..12 run tellraw @s ["",{"text":" ","color":"aqua"},{"text":"     "},{"text":"[◀]","clickEvent":{"action":"run_command","value":"/function blingedit:move_left"},"color":"aqua"},{"text":"   "},{"text":"[▶]","clickEvent":{"action":"run_command","value":"/function blingedit:move_right"},"color":"aqua"}]
execute unless score Global mc_version matches 113 unless score @s state matches ..1 unless score @s state matches 4..7 unless score @s state matches 9..12 run tellraw @s ["",{"text":" ","color":"aqua"},{"text":"    "},{"text":"[◀]","clickEvent":{"action":"run_command","value":"/function blingedit:move_left"},"color":"aqua"},{"text":"    "},{"text":"[▶]","clickEvent":{"action":"run_command","value":"/function blingedit:move_right"},"color":"aqua"}]
execute unless score @s state matches ..1 unless score @s state matches 4..7 unless score @s state matches 9..12 run tellraw @s ["",{"text":"         "},{"text":"[▼]","clickEvent":{"action":"run_command","value":"/function blingedit:move_backward"},"color":"aqua"},{"text":"          "},{"text":"[▼]","clickEvent":{"action":"run_command","value":"/function blingedit:move_down"},"color":"aqua"}]
tellraw @s ""
execute as @s[scores={language=0}] run function blingedit:interface/en/actions_bottom
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/actions_bottom
execute as @s[scores={language=2}] run function blingedit:interface/rus/actions_bottom