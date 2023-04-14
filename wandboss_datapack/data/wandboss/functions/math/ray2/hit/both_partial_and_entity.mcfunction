execute store result score distance_partial wandboss.calc run data get storage wandboss:calc math.ray2.hit_info.partial_distance 1000
execute store result score distance_entity wandboss.calc run data get storage wandboss:calc math.ray2.hit_info.entity_distance 1000

execute if score distance_partial wandboss.calc < distance_entity wandboss.calc run data modify storage wandboss:calc math.ray2.hit_info.face_normal set from storage wandboss:calc math.ray2.hit_info.partial_face_normal
execute if score distance_partial wandboss.calc < distance_entity wandboss.calc run data modify storage wandboss:calc math.ray2.hit_info.Pos set from storage wandboss:calc math.ray2.hit_info.partial_Pos
execute if score distance_partial wandboss.calc < distance_entity wandboss.calc store result score total_d wandboss.calc run data get storage wandboss:calc math.ray2.hit_info.partial_total_distance 1000
execute if score distance_partial wandboss.calc < distance_entity wandboss.calc store result score total_d wandboss.calc run data modify storage wandboss:calc math.ray2.hit_entity set value 0b
execute if score distance_partial wandboss.calc >= distance_entity wandboss.calc run data modify storage wandboss:calc math.ray2.hit_info.face_normal set from storage wandboss:calc math.ray2.hit_info.entity_face_normal
execute if score distance_partial wandboss.calc >= distance_entity wandboss.calc run data modify storage wandboss:calc math.ray2.hit_info.Pos set from storage wandboss:calc math.ray2.hit_info.entity_Pos
execute if score distance_partial wandboss.calc >= distance_entity wandboss.calc store result score total_d wandboss.calc run data get storage wandboss:calc math.ray2.hit_info.entity_total_distance 1000
execute if score distance_partial wandboss.calc >= distance_entity wandboss.calc store result score total_d wandboss.calc run data modify storage wandboss:calc math.ray2.hit_entity set value 1b

data modify entity @s Pos set from storage wandboss:calc math.ray2.hit_info.Pos