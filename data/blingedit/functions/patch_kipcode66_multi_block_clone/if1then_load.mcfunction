execute if score Global step_dz matches 1.. if score Global rotation matches 0..0 run function blingedit:patch_kipcode66_multi_block_clone/execute7
execute if score Global step_dx matches 1.. if score Global rotation matches 90..90 run function blingedit:patch_kipcode66_multi_block_clone/execute7
execute if score Global step_dz matches ..-1 if score Global rotation matches 180..180 run function blingedit:patch_kipcode66_multi_block_clone/execute7
execute if score Global step_dx matches ..-1 if score Global rotation matches 270..270 run function blingedit:patch_kipcode66_multi_block_clone/execute7
execute unless score Global step_dz matches 1.. if score Global rotation matches 0..0 run function blingedit:patch_kipcode66_multi_block_clone/execute6
execute unless score Global step_dx matches 1.. if score Global rotation matches 90..90 run function blingedit:patch_kipcode66_multi_block_clone/execute6
execute unless score Global step_dz matches ..-1 if score Global rotation matches 180..180 run function blingedit:patch_kipcode66_multi_block_clone/execute6
execute unless score Global step_dx matches ..-1 if score Global rotation matches 270..270 run function blingedit:patch_kipcode66_multi_block_clone/execute6