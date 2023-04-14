tag @s add wandboss.ray2.not_targetable
data modify storage wandboss:calc raycast set value {range:2.0d}
execute anchored eyes positioned ^ ^ ^ run function wandboss:math/ray2
tag @s remove wandboss.ray2.not_targetable


execute if data storage wandboss:calc math.ray2{hit:0b} run data modify storage wandboss:calc projectile set value {Tags:["wandboss.projectile.poison"],speed:14,duration:10}
execute if data storage wandboss:calc math.ray2{hit:0b} run data modify storage wandboss:calc projectile.Rotation set from entity @s Rotation
execute if data storage wandboss:calc math.ray2{hit:0b} run data modify storage wandboss:calc projectile.Owner set from entity @s UUID
execute if data storage wandboss:calc math.ray2{hit:0b} anchored eyes positioned ^ ^ ^2 run function wandboss:entity/projectile/generic/summon

execute if data storage wandboss:calc math.ray2{hit:1b} at @e[type=marker,tag=wandboss.math.raycast] run function wandboss:entity/projectile/poison/hit