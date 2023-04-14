data modify entity @s Pos set from storage wandboss:calc math.ray2.crossings[-1]

execute if data storage wandboss:calc math.ray2.hit_info.full_face_normal run data modify storage wandboss:calc math.ray2.hit_info.face_normal set from storage wandboss:calc math.ray2.hit_info.full_face_normal
execute if data storage wandboss:calc math.ray2.hit_info.partial_face_normal run data modify storage wandboss:calc math.ray2.hit_info.face_normal set from storage wandboss:calc math.ray2.hit_info.partial_face_normal

execute if data storage wandboss:calc math.ray2.hit_info.partial_distance if data storage wandboss:calc math.ray2.hit_info.entity_distance run function wandboss:math/ray2/hit/both_partial_and_entity

execute if data storage wandboss:calc math.ray2{hit:1b} if score total_d wandboss.calc > MAX_DISTANCE wandboss.calc run data modify storage wandboss:calc math.ray2.hit set value 0b