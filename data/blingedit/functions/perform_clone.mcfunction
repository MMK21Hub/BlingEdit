scoreboard players add @e _age 1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
scoreboard players add @e _age 1
execute as @e[scores={_age=1}] run function blingedit:execute099_ln813
function blingedit:check_loaded
execute if score Global loaded matches 1.. run function blingedit:execute121_ln824