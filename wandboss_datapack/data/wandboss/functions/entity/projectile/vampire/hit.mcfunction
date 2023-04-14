execute if data storage wandboss:calc math.ray2{hit_entity:1b} run playsound minecraft:entity.evoker_fangs.attack player @a[distance=..32] ~ ~ ~ 1 1.5
execute if data storage wandboss:calc math.ray2{hit_entity:0b} run playsound minecraft:block.fire.extinguish player @a[distance=..32] ~ ~ ~ 0.5 2
particle dust 1 0 0 1 ~ ~ ~ 0.15 0.15 0.15 1 10
execute if data storage wandboss:calc math.ray2{hit_entity:1b} as @e[type=#wandboss:targetable,tag=wandboss.ray2.hit_entity] at @s run function wandboss:entity/projectile/vampire/hit_entity