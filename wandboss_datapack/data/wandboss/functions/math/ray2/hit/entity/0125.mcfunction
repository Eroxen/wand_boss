execute store success score hit_entity.0125 wandboss.calc if entity @e[type=#wandboss:targetable,tag=wandboss.ray2.hit_maybe,dx=0,dy=0,dz=0]

execute if score hit_entity.0125 wandboss.calc matches 0 run scoreboard players add entity_d wandboss.calc 62500
execute if score hit_entity.0125 wandboss.calc matches 1 run scoreboard players remove entity_d wandboss.calc 62500

execute if score hit_entity.0125 wandboss.calc matches 0 positioned ^ ^ ^0.0625 run function wandboss:math/ray2/hit/entity/00625
execute if score hit_entity.0125 wandboss.calc matches 1 positioned ^ ^ ^-0.0625 run function wandboss:math/ray2/hit/entity/00625