data modify storage wandboss:calc math.ray2 set value {hit:0b,stop:0b,hit_entity:0b,hit_info:{}}
scoreboard players set MAX_DISTANCE wandboss.calc 4500
execute if data storage wandboss:calc raycast.range store result score MAX_DISTANCE wandboss.calc run data get storage wandboss:calc raycast.range 1000

kill @e[type=marker,tag=wandboss.math.raycast]
summon marker ^ ^ ^1 {Tags:["wandboss.math.raycast"]}
data modify entity @e[type=marker,tag=wandboss.math.raycast,limit=1,distance=..16] Rotation set from entity @s Rotation
execute positioned ^ ^ ^ as @e[type=marker,tag=wandboss.math.raycast,limit=1,distance=..16] run function wandboss:math/ray2/marker