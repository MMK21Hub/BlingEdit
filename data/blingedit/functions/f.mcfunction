replaceitem entity @s[scores={edit=2}] weapon.mainhand carrot_on_a_stick{HideFlags:1,display:{Name:"{\"text\":\"BlingEdit\"}"},Enchantments:[{lvl:5s,id:"minecraft:sharpness"}]}
replaceitem entity @s[scores={edit=1}] weapon.mainhand diamond_sword{display:{Name:"{\"text\":\"BlingEdit\"}"}}
execute if score @s[scores={raycast_select=0}] shift matches 0 run function blingedit:cursor_range_add
execute if score @s[scores={raycast_select=0}] shift matches 1.. run function blingedit:cursor_range_remove
scoreboard players set @s cursor_change 2
execute if score @s[scores={raycast_select=1,cursor_change=2}] cursor_inside matches 0 run function blingedit:cursor_inside
execute if score @s[scores={raycast_select=1,cursor_change=2}] cursor_inside matches 1 run function blingedit:cursor_before
scoreboard players set @s cursor_change 0
replaceitem entity @s weapon.offhand air