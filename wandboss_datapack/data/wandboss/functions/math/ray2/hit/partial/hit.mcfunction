execute if score hit_partial_x wandboss.calc matches 1 run scoreboard players operation partial_d_min wandboss.calc < partial_d_n_x wandboss.calc
execute if score hit_partial_y wandboss.calc matches 1 run scoreboard players operation partial_d_min wandboss.calc < partial_d_n_y wandboss.calc
execute if score hit_partial_z wandboss.calc matches 1 run scoreboard players operation partial_d_min wandboss.calc < partial_d_n_z wandboss.calc

scoreboard players operation surface_x wandboss.calc = l_x wandboss.calc
scoreboard players operation surface_x wandboss.calc *= partial_d_min wandboss.calc
scoreboard players operation surface_x wandboss.calc /= precision wandboss.calc
scoreboard players operation surface_x wandboss.calc += precise_x wandboss.calc

scoreboard players operation surface_y wandboss.calc = l_y wandboss.calc
scoreboard players operation surface_y wandboss.calc *= partial_d_min wandboss.calc
scoreboard players operation surface_y wandboss.calc /= precision wandboss.calc
scoreboard players operation surface_y wandboss.calc += precise_y wandboss.calc

scoreboard players operation surface_z wandboss.calc = l_z wandboss.calc
scoreboard players operation surface_z wandboss.calc *= partial_d_min wandboss.calc
scoreboard players operation surface_z wandboss.calc /= precision wandboss.calc
scoreboard players operation surface_z wandboss.calc += precise_z wandboss.calc

data modify storage wandboss:calc math.ray2.crossings append value [0d,0d,0d]
execute store result storage wandboss:calc math.ray2.crossings[-1][0] double 0.001 run scoreboard players get surface_x wandboss.calc
execute store result storage wandboss:calc math.ray2.crossings[-1][1] double 0.001 run scoreboard players get surface_y wandboss.calc
execute store result storage wandboss:calc math.ray2.crossings[-1][2] double 0.001 run scoreboard players get surface_z wandboss.calc

data modify entity @s Pos set from storage wandboss:calc math.ray2.crossings[-1]
data modify storage wandboss:calc math.ray2 merge value {hit:1b,stop:1b}

execute if score partial_d_n_x wandboss.calc = partial_d_min wandboss.calc if score d_x wandboss.calc matches -1 run data modify storage wandboss:calc math.ray2.hit_info.partial_face_normal set value {x:1}
execute if score partial_d_n_x wandboss.calc = partial_d_min wandboss.calc if score d_x wandboss.calc matches 1 run data modify storage wandboss:calc math.ray2.hit_info.partial_face_normal set value {x:-1}
execute if score partial_d_n_y wandboss.calc = partial_d_min wandboss.calc if score d_y wandboss.calc matches -1 run data modify storage wandboss:calc math.ray2.hit_info.partial_face_normal set value {y:1}
execute if score partial_d_n_y wandboss.calc = partial_d_min wandboss.calc if score d_y wandboss.calc matches 1 run data modify storage wandboss:calc math.ray2.hit_info.partial_face_normal set value {y:-1}
execute if score partial_d_n_z wandboss.calc = partial_d_min wandboss.calc if score d_z wandboss.calc matches -1 run data modify storage wandboss:calc math.ray2.hit_info.partial_face_normal set value {z:1}
execute if score partial_d_n_z wandboss.calc = partial_d_min wandboss.calc if score d_z wandboss.calc matches 1 run data modify storage wandboss:calc math.ray2.hit_info.partial_face_normal set value {z:-1}
execute store result storage wandboss:calc math.ray2.hit_info.partial_distance double 0.001 run scoreboard players get partial_d_min wandboss.calc
data modify storage wandboss:calc math.ray2.hit_info.partial_Pos set from storage wandboss:calc math.ray2.crossings[-1]


scoreboard players operation total_d wandboss.calc = d_min wandboss.calc
scoreboard players operation total_d wandboss.calc += partial_d_min wandboss.calc
execute store result storage wandboss:calc math.ray2.hit_info.partial_total_distance double 0.001 run scoreboard players get total_d wandboss.calc