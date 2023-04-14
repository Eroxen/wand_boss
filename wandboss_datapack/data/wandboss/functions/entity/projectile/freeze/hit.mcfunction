playsound minecraft:block.glass.break player @a[distance=..32] ~ ~ ~ 1 0.5
particle dust 0.5 0.5 1 1 ~ ~ ~ 0.15 0.15 0.15 1 10
particle dust 1 1 1 1 ~ ~ ~ 0.15 0.15 0.15 1 10
execute if data storage wandboss:calc math.ray2{hit_entity:1b} as @e[type=#wandboss:targetable,tag=wandboss.ray2.hit_entity] at @s run function wandboss:entity/projectile/freeze/hit_entity