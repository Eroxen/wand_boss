tag @e[type=#wandboss:targetable,tag=wandboss.ray2.hit_entity] remove wandboss.ray2.hit_entity
tag @e[type=#wandboss:targetable,predicate=wandboss:ray2/entity_targetable,dx=0,dy=0,dz=0] add wandboss.ray2.hit_maybe
scoreboard players set entity_d wandboss.calc 1000000

execute if score d_x wandboss.calc matches -1 if score d_y wandboss.calc matches -1 if score d_z wandboss.calc matches -1 at @s positioned ~ ~ ~ positioned ^ ^ ^1 run function wandboss:math/ray2/hit/entity/1
execute if score d_x wandboss.calc matches -1 if score d_y wandboss.calc matches -1 if score d_z wandboss.calc matches 1 at @s positioned ~ ~ ~-1 positioned ^ ^ ^1 run function wandboss:math/ray2/hit/entity/1
execute if score d_x wandboss.calc matches -1 if score d_y wandboss.calc matches 1 if score d_z wandboss.calc matches -1 at @s positioned ~ ~-1 ~ positioned ^ ^ ^1 run function wandboss:math/ray2/hit/entity/1
execute if score d_x wandboss.calc matches -1 if score d_y wandboss.calc matches 1 if score d_z wandboss.calc matches 1 at @s positioned ~ ~-1 ~-1 positioned ^ ^ ^1 run function wandboss:math/ray2/hit/entity/1
execute if score d_x wandboss.calc matches 1 if score d_y wandboss.calc matches -1 if score d_z wandboss.calc matches -1 at @s positioned ~-1 ~ ~ positioned ^ ^ ^1 run function wandboss:math/ray2/hit/entity/1
execute if score d_x wandboss.calc matches 1 if score d_y wandboss.calc matches -1 if score d_z wandboss.calc matches 1 at @s positioned ~-1 ~ ~-1 positioned ^ ^ ^1 run function wandboss:math/ray2/hit/entity/1
execute if score d_x wandboss.calc matches 1 if score d_y wandboss.calc matches 1 if score d_z wandboss.calc matches -1 at @s positioned ~-1 ~-1 ~ positioned ^ ^ ^1 run function wandboss:math/ray2/hit/entity/1
execute if score d_x wandboss.calc matches 1 if score d_y wandboss.calc matches 1 if score d_z wandboss.calc matches 1 at @s positioned ~-1 ~-1 ~-1 positioned ^ ^ ^1 run function wandboss:math/ray2/hit/entity/1

tag @e[tag=wandboss.ray2.hit_maybe] remove wandboss.ray2.hit_maybe
tag @e[tag=wandboss.ray2.hit_maybe.1] remove wandboss.ray2.hit_maybe.1