tellraw @s ["",{"text":"Use "},{"text":"/setblock ~ ~ ~ <block>","hoverEvent":{"action":"show_text","value":"Quick input"},"clickEvent":{"action":"suggest_command","value":"/setblock ~ ~ ~ minecraft:"},"color":"gray"},{"text":" to pick the block to be replaced.                     "},{"text":"[✖]","color":"red","clickEvent":{"action":"run_command","value":"/function blingedit:close"}}]
tellraw @s ["",{"text":"Or pick "},{"text":"[air]","clickEvent":{"action":"run_command","value":"/function blingedit:replace1_air"},"color":"aqua"},"\n"]
