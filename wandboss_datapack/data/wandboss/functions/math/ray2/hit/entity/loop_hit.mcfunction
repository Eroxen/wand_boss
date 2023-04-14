tag @e[type=#wandboss:targetable,tag=wandboss.ray2.hit_maybe.1,dx=0,dy=0,dz=0,limit=1,sort=nearest] add wandboss.ray2.hit_entity

tp @s ~ ~ ~
data modify storage wandboss:calc math.ray2.hit_info.entity_Pos set from entity @s Pos
data modify storage wandboss:calc math.ray2.crossings append from storage wandboss:calc math.ray2.hit_info.entity_Pos
data modify storage wandboss:calc math.ray2 merge value {hit:1b,stop:1b}

scoreboard players set op wandboss.calc 1000
scoreboard players operation entity_d wandboss.calc /= op wandboss.calc

scoreboard players operation total_d wandboss.calc = d_min wandboss.calc
scoreboard players operation total_d wandboss.calc += entity_d wandboss.calc
execute store result storage wandboss:calc math.ray2.hit_info.entity_total_distance double 0.001 run scoreboard players get total_d wandboss.calc
execute store result storage wandboss:calc math.ray2.hit_info.entity_distance double 0.001 run scoreboard players get entity_d wandboss.calc