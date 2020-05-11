# Temporary variables
scoreboard players set Global bepch_tmp3 2

scoreboard players operation Global bepch_tmp0 = Global xmax
scoreboard players operation Global bepch_tmp1 = Global ymax
scoreboard players operation Global bepch_tmp2 = Global zmax
scoreboard players operation Global bepch_tmp0 -= Global xmin
scoreboard players operation Global bepch_tmp1 -= Global ymin
scoreboard players operation Global bepch_tmp2 -= Global zmin
scoreboard players operation Global bepch_tmp0 -= Global dx
scoreboard players operation Global bepch_tmp1 -= Global dy
scoreboard players operation Global bepch_tmp2 -= Global dz
scoreboard players operation Global bepch_tmp0 /= c1000 Constant
scoreboard players operation Global bepch_tmp1 /= c1000 Constant
scoreboard players operation Global bepch_tmp2 /= c1000 Constant
execute if score Global bepch_tmp0 matches ..-1 run scoreboard players operation Global bepch_tmp0 *= minus Constant
execute if score Global bepch_tmp1 matches ..-1 run scoreboard players operation Global bepch_tmp1 *= minus Constant
execute if score Global bepch_tmp2 matches ..-1 run scoreboard players operation Global bepch_tmp2 *= minus Constant

scoreboard players operation Global bepch_tmp0 < Global bepch_tmp3
scoreboard players operation Global bepch_tmp1 < Global bepch_tmp3
scoreboard players operation Global bepch_tmp2 < Global bepch_tmp3