execute if score Global mc_version matches 113 run tellraw @s ["",{"text":"Версия игры:                     "},{"text":" ","bold":"true"},{"text":"1.13.x","color":"white"}]
execute if score Global mc_version matches 114 run tellraw @s ["",{"text":"Версия игры:                     "},{"text":" ","bold":"true"},{"text":"1.14.x","color":"white"}]
execute if score Global mc_version matches 115.. run tellraw @s ["",{"text":"Версия игры:                     "},{"text":" ","bold":"true"},{"text":"1.15+","color":"white"}]

execute if score Global feedback matches 1 run tellraw @s ["",{"text":"sendCommandFeedBack:          "},{"text":"[true]  ","color":"white"},{"text":"  ","bold":"true"},{"text":"false","clickEvent":{"action":"run_command","value":"/function blingedit:feedback_false"},"color":"gray"}]
execute if score Global feedback matches 0 run tellraw @s ["",{"text":"sendCommandFeedBack:           "},{"text":"true","color":"gray","clickEvent":{"action":"run_command","value":"/function blingedit:feedback_true"}},{"text":"  ","bold":"true"},{"text":"  [false]","color":"white"}]

tellraw @s[scores={sound_type=0}] ["",{"text":"Звук нажатия на кнопку:     "},{"text":"  ","bold":"true"},{"text":"◀","color":"gray"},{"text":" 0 "},{"text":"▶","clickEvent":{"action":"run_command","value":"/function blingedit:sound_next"}}]
tellraw @s[scores={sound_type=1..8}] ["",{"text":"Звук нажатия на кнопку:     "},{"text":"  ","bold":"true"},{"text":"◀","clickEvent":{"action":"run_command","value":"/function blingedit:sound_previous"}}," ",{"score":{"name":"@s","objective":"sound_type"}}," ",{"text":"▶","clickEvent":{"action":"run_command","value":"/function blingedit:sound_next"}}]
tellraw @s[scores={sound_type=9}] ["",{"text":"Звук нажатия на кнопку:     "},{"text":"  ","bold":"true"},{"text":"◀","clickEvent":{"action":"run_command","value":"/function blingedit:sound_previous"}},{"text":" 9 "},{"text":"▶","color":"gray"}]

tellraw @s[scores={particles=1}] ["",{"text":"Отрисовка границ региона:    "},{"text":"◀","color":"gray"},{"text":" 1 "},{"text":"▶","clickEvent":{"action":"run_command","value":"/function blingedit:particle_next"}}]
tellraw @s[scores={particles=2..8}] ["",{"text":"Отрисовка границ региона:    "},{"text":"◀","clickEvent":{"action":"run_command","value":"/function blingedit:particle_previous"}}," ",{"score":{"name":"@s","objective":"particles"}}," ",{"text":"▶","clickEvent":{"action":"run_command","value":"/function blingedit:particle_next"}}]
tellraw @s[scores={particles=9}] ["",{"text":"Отрисовка границ региона:    "},{"text":"◀","clickEvent":{"action":"run_command","value":"/function blingedit:particle_previous"}},{"text":" 9 "},{"text":"▶","color":"gray"}]

scoreboard players operation @s draw_interval = Global draw_interval
scoreboard players operation @s draw_interval /= c2 Constant
tellraw @s[scores={draw_interval=1}] ["",{"text":"Интервал отрисовки:","color":"white"},"            ",{"text":"◀","color":"gray"},{"text":" 0.1с "},{"text":"▶","clickEvent":{"action":"run_command","value":"/function blingedit:interval_add"}}]
tellraw @s[scores={draw_interval=2..9}] ["",{"text":"Интервал отрисовки:","color":"white"},"            ",{"text":"◀","clickEvent":{"action":"run_command","value":"/function blingedit:interval_remove"}},{"text":" 0."},{"score":{"name":"@s","objective":"draw_interval"}},{"text":"с "},{"text":"▶","clickEvent":{"action":"run_command","value":"/function blingedit:interval_add"}}]
tellraw @s[scores={draw_interval=10}] ["",{"text":"Интервал отрисовки:","color":"white"},"            ",{"text":"◀","clickEvent":{"action":"run_command","value":"/function blingedit:interval_remove"}},{"text":" 1.0с "},{"text":"▶","color":"gray"}]
tellraw @s ""
function blingedit:color/color_settings_rus
tellraw @s ""