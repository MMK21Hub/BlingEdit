tellraw @s ["",{"text":"Выберите блок для случайной замены при помощи "},{"text":"/setblock ~ ~ ~ <блок>", "underlined":true,"hoverEvent":{"action":"show_text","value":"Быстрый ввод"},"clickEvent":{"action":"suggest_command","value":"/setblock ~ ~ ~ minecraft:"},"color":"gray"},{"text":"   "},{"text":"[✖]","color":"red","clickEvent":{"action":"run_command","value":"/function blingedit:close_random"}}]
tellraw @s ["",{"text":"Заменить "},{"text":"воздух","underlined":true,"clickEvent":{"action":"run_command","value":"/function blingedit:replace_random_air"},"color":"aqua"},"\n"]