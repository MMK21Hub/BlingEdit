execute if score Global mc_version matches 113 run tellraw @s ["",{"text":"Client Version:                     1.13.x","color":"white"}]
execute if score Global mc_version matches 114 run tellraw @s ["",{"text":"Client Version:                     1.14.x","color":"white"}]
execute if score Global mc_version matches 115 run tellraw @s ["",{"text":"Client Version:                     1.15+","color":"white"}]

execute if score Global feedback matches 1 run tellraw @s ["",{"text":"sendCommandFeedBack:     "},{"text":"    ","bold":"true"},{"text":"[true]  ","color":"white"},{"text":"  ","bold":"true"},{"text":"false","clickEvent":{"action":"run_command","value":"/function blingedit:feedback_false"},"color":"gray"}]
execute if score Global feedback matches 0 run tellraw @s ["",{"text":"sendCommandFeedBack:      "},{"text":"    ","bold":"true"},{"text":"true","color":"gray","clickEvent":{"action":"run_command","value":"/function blingedit:feedback_true"}},{"text":"  ","bold":"true"},{"text":"  [false]","color":"white"}]

tellraw @s[scores={sound_type=0}] ["",{"text":"Button Click Sound:              "},{"text":" ","bold":"true"},{"text":"◀","color":"gray"},{"text":" 0 "},{"text":"▶","clickEvent":{"action":"run_command","value":"/function blingedit:sound_next"}}]
tellraw @s[scores={sound_type=1..8}] ["",{"text":"Button Click Sound:              "},{"text":" ","bold":"true"},{"text":"◀","clickEvent":{"action":"run_command","value":"/function blingedit:sound_previous"}}," ",{"score":{"name":"@s","objective":"sound_type"}}," ",{"text":"▶","clickEvent":{"action":"run_command","value":"/function blingedit:sound_next"}}]
tellraw @s[scores={sound_type=9}] ["",{"text":"Button Click Sound:              "},{"text":" ","bold":"true"},{"text":"◀","clickEvent":{"action":"run_command","value":"/function blingedit:sound_previous"}},{"text":" 9 "},{"text":"▶","color":"gray"}]

tellraw @s[scores={particles=1}] ["",{"text":"Region Particle Outline:         "},{"text":" ","bold":"true"},{"text":"◀","color":"gray"},{"text":" 1 "},{"text":"▶","clickEvent":{"action":"run_command","value":"/function blingedit:particle_next"}}]
tellraw @s[scores={particles=2..8}] ["",{"text":"Region Particle Outline:         "},{"text":" ","bold":"true"},{"text":"◀","clickEvent":{"action":"run_command","value":"/function blingedit:particle_previous"}}," ",{"score":{"name":"@s","objective":"particles"}}," ",{"text":"▶","clickEvent":{"action":"run_command","value":"/function blingedit:particle_next"}}]
tellraw @s[scores={particles=9}] ["",{"text":"Region Particle Outline:         "},{"text":" ","bold":"true"},{"text":"◀","clickEvent":{"action":"run_command","value":"/function blingedit:particle_previous"}},{"text":" 9 "},{"text":"▶","color":"gray"}]

scoreboard players operation @s draw_interval = Global draw_interval
scoreboard players operation @s draw_interval /= c2 Constant
tellraw @s[scores={draw_interval=1}] ["",{"text":"Outline Rendering Interval:    ","color":"white"},{"text":" ","bold":"true"},{"text":"◀","color":"gray"},{"text":" 0.1s "},{"text":"▶","clickEvent":{"action":"run_command","value":"/function blingedit:interval_add"}}]
tellraw @s[scores={draw_interval=2..9}] ["",{"text":"Outline Rendering Interval:    ","color":"white"},{"text":" ","bold":"true"},{"text":"◀","clickEvent":{"action":"run_command","value":"/function blingedit:interval_remove"}},{"text":" 0."},{"score":{"name":"@s","objective":"draw_interval"}},{"text":"s "},{"text":"▶","clickEvent":{"action":"run_command","value":"/function blingedit:interval_add"}}]
tellraw @s[scores={draw_interval=10}] ["",{"text":"Outline Rendering Interval:    ","color":"white"},{"text":" ","bold":"true"},{"text":"◀","clickEvent":{"action":"run_command","value":"/function blingedit:interval_remove"}},{"text":" 1.0s "},{"text":"▶","color":"gray"}]
tellraw @s ""
function blingedit:color/color_settings_en
tellraw @s ""