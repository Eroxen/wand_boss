playsound minecraft:block.slime_block.place player @a[distance=..32] ~ ~ ~ 1 0.5
particle item_slime ~ ~ ~ 0 0 0 1 10
execute if data storage wandboss:calc math.ray2{hit_entity:1b} run effect give @e[type=#wandboss:targetable,tag=wandboss.ray2.hit_entity] minecraft:poison 5 1