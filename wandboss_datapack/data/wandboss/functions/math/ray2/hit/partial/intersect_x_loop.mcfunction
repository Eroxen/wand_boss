execute store result score surface_x wandboss.calc run data get storage wandboss:calc math.ray2.partial.x[0].s 1000
scoreboard players operation partial_d_n_x wandboss.calc = surface_x wandboss.calc
scoreboard players operation partial_d_n_x wandboss.calc -= partial_x wandboss.calc
scoreboard players operation partial_d_n_x wandboss.calc *= precision wandboss.calc
scoreboard players operation partial_d_n_x wandboss.calc /= l_x wandboss.calc

scoreboard players operation surface_y wandboss.calc = l_y wandboss.calc
scoreboard players operation surface_y wandboss.calc *= partial_d_n_x wandboss.calc
scoreboard players operation surface_y wandboss.calc /= precision wandboss.calc
scoreboard players operation surface_y wandboss.calc += partial_y wandboss.calc

scoreboard players operation surface_z wandboss.calc = l_z wandboss.calc
scoreboard players operation surface_z wandboss.calc *= partial_d_n_x wandboss.calc
scoreboard players operation surface_z wandboss.calc /= precision wandboss.calc
scoreboard players operation surface_z wandboss.calc += partial_z wandboss.calc

execute if score partial_d_n_x wandboss.calc matches 0.. unless data storage wandboss:calc math.ray2.partial.x[0].partial if score surface_y wandboss.calc matches 0..1000 if score surface_z wandboss.calc matches 0..1000 run scoreboard players set hit_partial_x wandboss.calc 1
execute if score partial_d_n_x wandboss.calc matches 0.. if data storage wandboss:calc math.ray2.partial.x[0].partial run function wandboss:math/ray2/hit/partial/intersect_x_partial

data remove storage wandboss:calc math.ray2.partial.x[0]
execute if score hit_partial_x wandboss.calc matches 0 if data storage wandboss:calc math.ray2.partial.x[0] run function wandboss:math/ray2/hit/partial/intersect_x_loop