execute if score Global wall_count matches 0 run tellraw @s ["",{"text":"Заполнено "},{"score":{"name":"Global","objective":"vol"}},{"text":" блоков.\n"}]
execute unless score Global wall_count matches 0 run tellraw @s ["",{"text":"Заполнено "},{"score":{"name":"Global","objective":"wall_count"}},{"text":" блоков.\n"}]