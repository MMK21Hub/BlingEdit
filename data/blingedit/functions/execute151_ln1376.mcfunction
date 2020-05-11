replaceitem entity @s[scores={edit=2}] weapon.mainhand carrot_on_a_stick{HideFlags:1,display:{Name:"{\"text\":\"BlingEdit\"}"},Enchantments:[{lvl:5s,id:"minecraft:sharpness"}]}
replaceitem entity @s[scores={edit=1}] weapon.mainhand diamond_sword{display:{Name:"{\"text\":\"BlingEdit\"}"}} 
scoreboard players set Global found_player 1
scoreboard players set Global handled 0
scoreboard players set @s cursor_change 0
execute unless score @s raycast_select matches 0.. run scoreboard players set @s raycast_select 0
execute as @s[scores={cursor_change=0}] if score @s raycast_select matches 0 run function blingedit:execute150_ln1392
execute as @s[scores={cursor_change=0}] if score @s raycast_select matches 1 if score @s cursor_inside matches 1 run function blingedit:execute150_ln1393
execute as @s[scores={cursor_change=0}] if score @s raycast_select matches 1 if score @s cursor_inside matches 0 run function blingedit:execute149_ln1386
scoreboard players set @s cursor_change 0