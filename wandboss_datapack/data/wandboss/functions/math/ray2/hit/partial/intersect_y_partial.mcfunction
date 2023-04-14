execute store result score box_min_x wandboss.calc run data get storage wandboss:calc math.ray2.partial.y[0].partial[0].x[0] 1000
execute store result score box_max_x wandboss.calc run data get storage wandboss:calc math.ray2.partial.y[0].partial[0].x[1] 1000
execute store result score box_min_z wandboss.calc run data get storage wandboss:calc math.ray2.partial.y[0].partial[0].z[0] 1000
execute store result score box_max_z wandboss.calc run data get storage wandboss:calc math.ray2.partial.y[0].partial[0].z[1] 1000

execute if data storage wandboss:calc math.ray2.partial.y[0].partial[0].x unless data storage wandboss:calc math.ray2.partial.y[0].partial[0].z if score surface_x wandboss.calc >= box_min_x wandboss.calc if score surface_x wandboss.calc <= box_max_x wandboss.calc run scoreboard players set hit_partial_y wandboss.calc 1
execute if data storage wandboss:calc math.ray2.partial.y[0].partial[0].z unless data storage wandboss:calc math.ray2.partial.y[0].partial[0].x if score surface_z wandboss.calc >= box_min_z wandboss.calc if score surface_z wandboss.calc <= box_max_z wandboss.calc run scoreboard players set hit_partial_y wandboss.calc 1
execute if data storage wandboss:calc math.ray2.partial.y[0].partial[0].x if data storage wandboss:calc math.ray2.partial.y[0].partial[0].z if score surface_x wandboss.calc >= box_min_x wandboss.calc if score surface_x wandboss.calc <= box_max_x wandboss.calc if score surface_z wandboss.calc >= box_min_z wandboss.calc if score surface_z wandboss.calc <= box_max_z wandboss.calc run scoreboard players set hit_partial_y wandboss.calc 1

data remove storage wandboss:calc math.ray2.partial.y[0].partial[0]
execute if score hit_partial_y wandboss.calc matches 0 if data storage wandboss:calc math.ray2.partial.y[0].partial[0] run function wandboss:math/ray2/hit/partial/intersect_y_partial