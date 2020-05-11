execute unless score @s click_detector matches 0.. run scoreboard players set @s click_detector 1
execute unless score @s particles matches 1..9 run scoreboard players set @s particles 1
execute unless score @s draw_particles matches 0..1 run scoreboard players set @s draw_particles 0
execute unless score Global draw_interval matches 2..20 run scoreboard players set Global draw_interval 10
execute unless score @s clone_in_place matches 0.. run scoreboard players set @s clone_in_place 0
execute unless score @s always_clone matches 0.. run scoreboard players set @s always_clone 0
execute unless score @s fast_switching matches 2..3 run scoreboard players set @s fast_switching 2
execute unless score @s mc_language matches 0.. run scoreboard players set @s mc_language 0
execute unless score @s cursor_inside matches 0.. run scoreboard players set @s cursor_inside 0
execute unless score @s cursor_range matches 0.. run scoreboard players set @s cursor_range 5
execute unless score @s click_sound matches 0.. run scoreboard players set @s click_sound 0
execute unless score @s sound_type matches 0..9 run scoreboard players set @s sound_type 2
scoreboard players set @s edit_color 0
execute unless score @s color_box matches 0..15 run scoreboard players set @s color_box 1
execute unless score @s color_clone matches 0..15 run scoreboard players set @s color_clone 4
execute unless score @s color_edit matches 0..15 run scoreboard players set @s color_edit 3
execute unless score @s color_hglt matches 0..15 run scoreboard players set @s color_hglt 8
scoreboard players set Global mc_version 114
function blingedit:check_1-13_version
function blingedit:check_1-15_version
execute unless score @s options_page matches 2 run function blingedit:options
execute if score @s options_page matches 2 run function blingedit:options_2