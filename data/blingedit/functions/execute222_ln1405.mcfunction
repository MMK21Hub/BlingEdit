execute as @s[nbt={Inventory:[{Slot:-106b, tag: {HideFlags:1,display:{Name:"{\"text\":\"BlingEdit\"}"},Enchantments:[{lvl:5s,id:"minecraft:sharpness"}] }, id:"minecraft:carrot_on_a_stick"}] }] run function blingedit:f
execute as @s[nbt={Inventory:[{Slot:-106b, tag: {display:{Name:"{\"text\":\"BlingEdit\"}"}}}]}] run function blingedit:f

scoreboard players operation Global mai_scratch1 = @s edit
scoreboard players operation @s prev_edit = Global mai_scratch1
scoreboard players set @s edit 0
scoreboard players set @s[nbt={"SelectedItem":{id:"minecraft:diamond_sword",tag:{display:{Name:"{\"text\":\"BlingEdit\"}"}}}}] edit 1
scoreboard players set @s[nbt={"SelectedItem":{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"BlingEdit\"}"}}}}] edit 2

scoreboard players set Global click 0
execute at @s positioned ~ ~1.6 ~ positioned ^ ^ ^1.5 positioned ~ ~-0.6 ~ run function blingedit:execute157_ln1423
execute if score @s right_click matches 1.. run scoreboard players set Global click 1

execute if score @s disp_plugins matches 0.. run function blingedit:plugins_list_end

execute if score @s edit matches 1.. unless score @s prev_edit matches 1.. run function blingedit:execute163_ln1445
execute unless score @s edit matches 1.. if score @s prev_edit matches 1.. run function blingedit:execute164_ln1469

execute as @s run function blingedit:get_minmax
execute if score Global has_box matches 1.. if score @s draw_particles matches 1 run function blingedit:execute167_ln1483

execute if score @s state matches 1..1 run function blingedit:execute171_ln1502
execute as @s run function blingedit:get_minmax
execute if score Global has_box matches 1.. run function blingedit:execute172_ln1519
execute as @s run function blingedit:get_dest_minmax

# Стойки при клонировании
execute if score Global has_dest_box matches 1.. run function blingedit:execute175_ln1525
execute unless score Global has_dest_box matches 1.. run function blingedit:execute176_ln1537

execute if score @s state matches 3..3 run function blingedit:execute179_ln1542
execute if score @s state matches 4..4 run function blingedit:execute195_ln1555
execute if score @s state matches 8..8 run function blingedit:execute198_ln1602

# Отслеживание перемещения всей рамки
scoreboard players set Global move_dest 0
execute if score @s state matches 9..9 run scoreboard players set Global move_dest 1
execute if score @s state matches 11..12 run scoreboard players set Global move_dest 1
execute if score Global move_dest matches 1 run function blingedit:execute204_ln1619

execute if score @s[gamemode=!spectator] state matches 5..5 at @s unless block ~ ~ ~ minecraft:air run function blingedit:execute211_ln1647
execute if score @s[gamemode=!spectator] state matches 6..6 at @s unless block ~ ~ ~ minecraft:air run function blingedit:tell_replace2
execute if score @s[gamemode=!spectator] state matches 7..7 at @s unless block ~ ~ ~ minecraft:air run function blingedit:perform_replace
execute if score @s[gamemode=!spectator] rand_replace matches 1 at @s unless block ~ ~ ~ minecraft:air run function blingedit:execute212_ln1706
execute as @s run function blingedit:get_cursor_position
scoreboard players add @e _age 1
summon area_effect_cloud
scoreboard players add @e _age 1
execute store result entity @e[limit=1,scores={_age=1}] Pos[0] double 0.001 run scoreboard players get Global _cursor_0
execute store result entity @e[limit=1,scores={_age=1}] Pos[1] double 0.001 run scoreboard players get Global _cursor_1
execute store result entity @e[limit=1,scores={_age=1}] Pos[2] double 0.001 run scoreboard players get Global _cursor_2
execute if score @s edit matches 1.. at @e[scores={_age=1}] run function blingedit:execute221_ln1716
scoreboard players set @s shift 0