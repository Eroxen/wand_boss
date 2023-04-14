execute store result score box_min_x wandboss.calc run data get storage wandboss:calc math.ray2.partial.z[0].partial[0].x[0] 1000
execute store result score box_max_x wandboss.calc run data get storage wandboss:calc math.ray2.partial.z[0].partial[0].x[1] 1000
execute store result score box_min_y wandboss.calc run data get storage wandboss:calc math.ray2.partial.z[0].partial[0].y[0] 1000
execute store result score box_max_y wandboss.calc run data get storage wandboss:calc math.ray2.partial.z[0].partial[0].y[1] 1000

execute if data storage wandboss:calc math.ray2.partial.z[0].partial[0].x unless data storage wandboss:calc math.ray2.partial.z[0].partial[0].y if score surface_x wandboss.calc >= box_min_x wandboss.calc if score surface_x wandboss.calc <= box_max_x wandboss.calc run scoreboard players set hit_partial_z wandboss.calc 1
execute if data storage wandboss:calc math.ray2.partial.z[0].partial[0].y unless data storage wandboss:calc math.ray2.partial.z[0].partial[0].x if score surface_y wandboss.calc >= box_min_y wandboss.calc if score surface_y wandboss.calc <= box_max_y wandboss.calc run scoreboard players set hit_partial_z wandboss.calc 1
execute if data storage wandboss:calc math.ray2.partial.z[0].partial[0].x if data storage wandboss:calc math.ray2.partial.z[0].partial[0].y if score surface_x wandboss.calc >= box_min_x wandboss.calc if score surface_x wandboss.calc <= box_max_x wandboss.calc if score surface_y wandboss.calc >= box_min_y wandboss.calc if score surface_y wandboss.calc <= box_max_y wandboss.calc run scoreboard players set hit_partial_z wandboss.calc 1

data remove storage wandboss:calc math.ray2.partial.z[0].partial[0]
execute if score hit_partial_z wandboss.calc matches 0 if data storage wandboss:calc math.ray2.partial.z[0].partial[0] run function wandboss:math/ray2/hit/partial/intersect_z_partial