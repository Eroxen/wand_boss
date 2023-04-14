execute store result score box_min_y wandboss.calc run data get storage wandboss:calc math.ray2.partial.x[0].partial[0].y[0] 1000
execute store result score box_max_y wandboss.calc run data get storage wandboss:calc math.ray2.partial.x[0].partial[0].y[1] 1000
execute store result score box_min_z wandboss.calc run data get storage wandboss:calc math.ray2.partial.x[0].partial[0].z[0] 1000
execute store result score box_max_z wandboss.calc run data get storage wandboss:calc math.ray2.partial.x[0].partial[0].z[1] 1000

execute if data storage wandboss:calc math.ray2.partial.x[0].partial[0].y unless data storage wandboss:calc math.ray2.partial.x[0].partial[0].z if score surface_y wandboss.calc >= box_min_y wandboss.calc if score surface_y wandboss.calc <= box_max_y wandboss.calc run scoreboard players set hit_partial_x wandboss.calc 1
execute if data storage wandboss:calc math.ray2.partial.x[0].partial[0].z unless data storage wandboss:calc math.ray2.partial.x[0].partial[0].y if score surface_z wandboss.calc >= box_min_z wandboss.calc if score surface_z wandboss.calc <= box_max_z wandboss.calc run scoreboard players set hit_partial_x wandboss.calc 1
execute if data storage wandboss:calc math.ray2.partial.x[0].partial[0].y if data storage wandboss:calc math.ray2.partial.x[0].partial[0].z if score surface_y wandboss.calc >= box_min_y wandboss.calc if score surface_y wandboss.calc <= box_max_y wandboss.calc if score surface_z wandboss.calc >= box_min_z wandboss.calc if score surface_z wandboss.calc <= box_max_z wandboss.calc run scoreboard players set hit_partial_x wandboss.calc 1

data remove storage wandboss:calc math.ray2.partial.x[0].partial[0]
execute if score hit_partial_x wandboss.calc matches 0 if data storage wandboss:calc math.ray2.partial.x[0].partial[0] run function wandboss:math/ray2/hit/partial/intersect_x_partial