scoreboard players set d_min wandboss.calc 999999999

scoreboard players operation d_n_x wandboss.calc = block_x wandboss.calc
scoreboard players operation d_n_x wandboss.calc += next_edge_x wandboss.calc
scoreboard players operation d_n_x wandboss.calc *= precision wandboss.calc
scoreboard players operation precise_x wandboss.calc = d_n_x wandboss.calc
scoreboard players operation d_n_x wandboss.calc -= l_0_x wandboss.calc
scoreboard players operation d_n_x wandboss.calc *= precision wandboss.calc
scoreboard players operation d_n_x wandboss.calc /= l_x wandboss.calc

execute if score d_n_x wandboss.calc matches 1.. run scoreboard players operation d_min wandboss.calc < d_n_x wandboss.calc


scoreboard players operation d_n_y wandboss.calc = block_y wandboss.calc
scoreboard players operation d_n_y wandboss.calc += next_edge_y wandboss.calc
scoreboard players operation d_n_y wandboss.calc *= precision wandboss.calc
scoreboard players operation precise_y wandboss.calc = d_n_y wandboss.calc
scoreboard players operation d_n_y wandboss.calc -= l_0_y wandboss.calc
scoreboard players operation d_n_y wandboss.calc *= precision wandboss.calc
scoreboard players operation d_n_y wandboss.calc /= l_y wandboss.calc

execute if score d_n_y wandboss.calc matches 1.. run scoreboard players operation d_min wandboss.calc < d_n_y wandboss.calc


scoreboard players operation d_n_z wandboss.calc = block_z wandboss.calc
scoreboard players operation d_n_z wandboss.calc += next_edge_z wandboss.calc
scoreboard players operation d_n_z wandboss.calc *= precision wandboss.calc
scoreboard players operation precise_z wandboss.calc = d_n_z wandboss.calc
scoreboard players operation d_n_z wandboss.calc -= l_0_z wandboss.calc
scoreboard players operation d_n_z wandboss.calc *= precision wandboss.calc
scoreboard players operation d_n_z wandboss.calc /= l_z wandboss.calc

execute if score d_n_z wandboss.calc matches 1.. run scoreboard players operation d_min wandboss.calc < d_n_z wandboss.calc


execute if score d_n_x wandboss.calc = d_min wandboss.calc run function wandboss:math/ray2/next_block/x
execute if score d_n_y wandboss.calc = d_min wandboss.calc run function wandboss:math/ray2/next_block/y
execute if score d_n_z wandboss.calc = d_min wandboss.calc run function wandboss:math/ray2/next_block/z

data modify storage wandboss:calc math.ray2.crossings append value [0d,0d,0d]
execute store result storage wandboss:calc math.ray2.crossings[-1][0] double 0.001 run scoreboard players get precise_x wandboss.calc
execute store result storage wandboss:calc math.ray2.crossings[-1][1] double 0.001 run scoreboard players get precise_y wandboss.calc
execute store result storage wandboss:calc math.ray2.crossings[-1][2] double 0.001 run scoreboard players get precise_z wandboss.calc

data modify entity @s Pos set from storage wandboss:calc math.ray2.crossings[-1]