tellraw @s ["",{"text":"Use "},{"text":"/setblock ~ ~ ~ <block>","hoverEvent":{"action":"show_text","value":"Quick input"},"clickEvent":{"action":"suggest_command","value":"/setblock ~ ~ ~ minecraft:"},"color":"gray"},{"text":" to pick the blocks to replace.                         "},{"text":"[✖]","color":"red","clickEvent":{"action":"run_command","value":"/function blingedit:close_random"}}]
tellraw @s ["",{"text":"Or replace "},{"text":"[air]","clickEvent":{"action":"run_command","value":"/function blingedit:replace_random_air"},"color":"aqua"},"\n"]