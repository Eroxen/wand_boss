tag @s add wandboss.projectile.explode
execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=#wandboss:targetable,predicate=wandboss:ray2/entity_targetable,dx=2,dy=2,dz=2] run damage @s 3 minecraft:explosion by @e[type=marker,tag=wandboss.projectile.explode,limit=1,sort=nearest] from @e[type=#wandboss:magic_user,tag=wandboss.entity.current_magic_user,limit=1,sort=nearest]
kill @s