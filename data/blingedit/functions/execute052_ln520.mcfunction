scoreboard players operation Global sto_scratch0 = Global _min_0
scoreboard players operation Global sto_scratch1 = Global _min_1
scoreboard players operation Global sto_scratch2 = Global _min_2
scoreboard players set Global sto_scratch3 1000
scoreboard players operation Global sto_scratch0 /= Global sto_scratch3
scoreboard players operation Global sto_scratch1 /= Global sto_scratch3
scoreboard players operation Global sto_scratch2 /= Global sto_scratch3
scoreboard players operation @s _rand_min_0 = Global sto_scratch0
scoreboard players operation @s _rand_min_1 = Global sto_scratch1
scoreboard players operation @s _rand_min_2 = Global sto_scratch2
scoreboard players operation Global sto_scratch0 = Global _max_0
scoreboard players operation Global sto_scratch1 = Global _max_1
scoreboard players operation Global sto_scratch2 = Global _max_2
scoreboard players set Global sto_scratch3 1000
scoreboard players operation Global sto_scratch0 /= Global sto_scratch3
scoreboard players operation Global sto_scratch1 /= Global sto_scratch3
scoreboard players operation Global sto_scratch2 /= Global sto_scratch3
scoreboard players operation @s _rand_max_0 = Global sto_scratch0
scoreboard players operation @s _rand_max_1 = Global sto_scratch1
scoreboard players operation @s _rand_max_2 = Global sto_scratch2
scoreboard players set @s has_rand 1
scoreboard players operation Global rx1 = @s _rand_min_0
scoreboard players operation Global ry1 = @s _rand_min_1
scoreboard players operation Global rz1 = @s _rand_min_2
scoreboard players operation Global rx2 = @s _rand_max_0
scoreboard players operation Global ry2 = @s _rand_max_1
scoreboard players operation Global rz2 = @s _rand_max_2

execute as @s[scores={language=0}] run function blingedit:interface/en/random_set
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/random_set
execute as @s[scores={language=2}] run function blingedit:interface/rus/random_set