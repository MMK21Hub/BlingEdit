scoreboard players set @s language 0
bossbar set minecraft:progress name "Progress"
function blingedit:clear
execute if score @s options_page matches 1 run function blingedit:options
execute if score @s options_page matches 2 run function blingedit:options_2