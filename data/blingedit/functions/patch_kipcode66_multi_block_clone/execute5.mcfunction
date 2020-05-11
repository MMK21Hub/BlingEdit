function blingedit:patch_kipcode66_multi_block_clone/get_clone_delta

execute if score Global rotation matches 90..90 run scoreboard players operation Global bepch_tmp0 >< Global bepch_tmp2
execute if score Global rotation matches 270..270 run scoreboard players operation Global bepch_tmp0 >< Global bepch_tmp2

# Advance the cursor as much as possible
execute if score Global flip_x matches 1.. if score Global flip_z matches 1.. run scoreboard players add Global rotation 180
execute if score Global flip_x matches 1.. if score Global flip_z matches 1.. run scoreboard players operation Global rotation %= c360 Constant

execute if score Global flip_x matches 1.. unless score Global flip_z matches 1.. run function blingedit:patch_kipcode66_multi_block_clone/execute3
execute if score Global flip_z matches 1.. unless score Global flip_x matches 1.. run function blingedit:patch_kipcode66_multi_block_clone/execute3
execute if score Global flip_x matches 1.. if score Global flip_z matches 1.. run function blingedit:patch_kipcode66_multi_block_clone/execute4
execute unless score Global flip_x matches 1.. unless score Global flip_z matches 1.. run function blingedit:patch_kipcode66_multi_block_clone/execute4

execute if score Global flip_x matches 1.. if score Global flip_z matches 1.. run scoreboard players add Global rotation 180
execute if score Global flip_x matches 1.. if score Global flip_z matches 1.. run scoreboard players operation Global rotation %= c360 Constant
