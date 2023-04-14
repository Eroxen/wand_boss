tag @s add wandboss.ray2.not_targetable
data modify storage wandboss:calc raycast set value {range:32.0d}
execute anchored eyes positioned ^ ^ ^ run function wandboss:math/ray2
tag @s remove wandboss.ray2.not_targetable

function wandboss:entity/get_size
execute if data storage wandboss:calc math.ray2{hit:1b} if data storage wandboss:calc math.ray2.hit_info.face_normal as @e[type=marker,tag=wandboss.math.raycast,limit=1,sort=nearest] at @s run function wandboss:item/wand/teleport/reposition_marker
execute if data storage wandboss:calc math.ray2{hit:1b} at @e[type=marker,tag=wandboss.math.raycast,limit=1,sort=nearest] run tp @s ~ ~ ~
execute if data storage wandboss:calc math.ray2{hit:1b} at @e[type=marker,tag=wandboss.math.raycast,limit=1,sort=nearest] run playsound minecraft:entity.enderman.teleport player @a[distance=..32] ~ ~ ~ 1 1