execute if score d_x wandboss.calc matches -1 if score d_y wandboss.calc matches -1 if score d_z wandboss.calc matches -1 positioned ~ ~ ~ run function wandboss:math/ray2/hit/entity/loop
execute if score d_x wandboss.calc matches -1 if score d_y wandboss.calc matches -1 if score d_z wandboss.calc matches 1 positioned ~ ~ ~1 run function wandboss:math/ray2/hit/entity/loop
execute if score d_x wandboss.calc matches -1 if score d_y wandboss.calc matches 1 if score d_z wandboss.calc matches -1 positioned ~ ~1 ~ run function wandboss:math/ray2/hit/entity/loop
execute if score d_x wandboss.calc matches -1 if score d_y wandboss.calc matches 1 if score d_z wandboss.calc matches 1 positioned ~ ~1 ~1 run function wandboss:math/ray2/hit/entity/loop
execute if score d_x wandboss.calc matches 1 if score d_y wandboss.calc matches -1 if score d_z wandboss.calc matches -1 positioned ~1 ~ ~ run function wandboss:math/ray2/hit/entity/loop
execute if score d_x wandboss.calc matches 1 if score d_y wandboss.calc matches -1 if score d_z wandboss.calc matches 1 positioned ~1 ~ ~1 run function wandboss:math/ray2/hit/entity/loop
execute if score d_x wandboss.calc matches 1 if score d_y wandboss.calc matches 1 if score d_z wandboss.calc matches -1 positioned ~1 ~1 ~ run function wandboss:math/ray2/hit/entity/loop
execute if score d_x wandboss.calc matches 1 if score d_y wandboss.calc matches 1 if score d_z wandboss.calc matches 1 positioned ~1 ~1 ~1 run function wandboss:math/ray2/hit/entity/loop