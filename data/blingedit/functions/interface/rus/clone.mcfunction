tellraw @s ["",{"text":"Отразить:   "},{"text":"[","clickEvent":{"action":"run_command","value":"/function blingedit:clone_flip_leftright"},"color":"dark_green"},{"text":"↔","bold":true,"clickEvent":{"action":"run_command","value":"/function blingedit:clone_flip_leftright"},"color":"dark_green"},{"text":"]","clickEvent":{"action":"run_command","value":"/function blingedit:clone_flip_leftright"},"color":"dark_green"},{"text":" "},{"text":"[","clickEvent":{"action":"run_command","value":"/function blingedit:clone_flip_frontback"},"color":"dark_green"},{"text":"↕","bold":true,"clickEvent":{"action":"run_command","value":"/function blingedit:clone_flip_frontback"},"color":"dark_green"},{"text":"]","clickEvent":{"action":"run_command","value":"/function blingedit:clone_flip_frontback"},"color":"dark_green"}]
tellraw @s ["",{"text":"Повернуть: "},{"text":"[","clickEvent":{"action":"run_command","value":"/function blingedit:clone_rotate_left"},"color":"dark_green"},{"text":"⟲","bold":true,"clickEvent":{"action":"run_command","value":"/function blingedit:clone_rotate_left"},"color":"dark_green"},{"text":"]","clickEvent":{"action":"run_command","value":"/function blingedit:clone_rotate_left"},"color":"dark_green"},{"text":" "},{"text":"[","clickEvent":{"action":"run_command","value":"/function blingedit:clone_rotate_right"},"color":"dark_green"},{"text":"⟳","bold":true,"clickEvent":{"action":"run_command","value":"/function blingedit:clone_rotate_right"},"color":"dark_green"},{"text":"]","clickEvent":{"action":"run_command","value":"/function blingedit:clone_rotate_right"},"color":"dark_green"},"\n"]
tellraw @s[scores={clone_air=1}] ["",{"text":"Копировать воздух:          "},{"text":"[Вкл]  ","color":"green"},{"text":" ","color":"dark_green"},{"text":"Выкл","clickEvent":{"action":"run_command","value":"/function blingedit:clone_air_off"},"color":"red"}]
tellraw @s[scores={clone_air=0}] ["",{"text":"Копировать воздух:           "},{"text":"Вкл","clickEvent":{"action":"run_command","value":"/function blingedit:clone_air_on"},"color":"green"},{"text":" ","color":"dark_green"},{"text":"  [Выкл]","color":"red"}]
tellraw @s[scores={moving_mode=0}] ["",{"text":"Режим перемещения:           "},{"text":"Вкл","clickEvent":{"action":"run_command","value":"/function blingedit:moving_mode_on"},"color":"green"},{"text":"   [Выкл]","color":"red"}]
tellraw @s[scores={moving_mode=1}] ["",{"text":"Режим перемещения:          "},{"text":"[Вкл]   ","color":"green"},{"text":"Выкл","clickEvent":{"action":"run_command","value":"/function blingedit:moving_mode_off"},"color":"red"}]
tellraw @s[scores={state=8..9}] ["",{"text":"Режим кисти:                  "},{"text":"  ","bold":"true"},{"text":"Вкл","clickEvent":{"action":"run_command","value":"/function blingedit:clone_brush"},"color":"green"},{"text":"   [Выкл]","color":"red"},"\n"]
tellraw @s[scores={state=11}] ["",{"text":"Режим кисти:                 "},{"text":"  ","bold":"true"},{"text":"[Вкл]   ","color":"green"},{"text":"Выкл","clickEvent":{"action":"run_command","value":"/function blingedit:clone_brush_disable"},"color":"red"},"\n"]
tellraw @s ["",{"text":"Действия: "},{"text":"[Применить]","clickEvent":{"action":"run_command","value":"/function blingedit:confirm_clone"},"color":"green"},{"text":" ","color":"green"},{"text":"[Применить и продолжить]","clickEvent":{"action":"run_command","value":"/function blingedit:clone_and_repeat"},"color":"green"},{"text":" ","color":"green"},{"text":" ","color":"green"},{"text":"[✖]","clickEvent":{"action":"run_command","value":"/function blingedit:cancel"},"color":"red"},"\n"]