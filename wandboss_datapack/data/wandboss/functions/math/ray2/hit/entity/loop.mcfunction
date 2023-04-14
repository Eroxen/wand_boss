scoreboard players add entity_d wandboss.calc 31250
execute positioned ~-0.95 ~-0.95 ~-0.95 run tag @e[type=#wandboss:targetable,tag=wandboss.ray2.hit_maybe,dx=0,dy=0,dz=0] add wandboss.ray2.hit_maybe.1

execute if entity @e[type=#wandboss:targetable,tag=wandboss.ray2.hit_maybe.1,dx=0,dy=0,dz=0] run data modify storage wandboss:calc math.ray2.hit_entity set value 1b

execute if data storage wandboss:calc math.ray2{hit_entity:1b} run function wandboss:math/ray2/hit/entity/loop_hit
execute if data storage wandboss:calc math.ray2{hit_entity:0b} run tag @e[type=#wandboss:targetable,tag=wandboss.ray2.hit_maybe.1] remove wandboss.ray2.hit_maybe.1
execute if data storage wandboss:calc math.ray2{hit_entity:0b} positioned ^ ^ ^0.03125 if entity @e[type=#wandboss:targetable,tag=wandboss.ray2.hit_maybe,dx=0,dy=0,dz=0] run function wandboss:math/ray2/hit/entity/loop