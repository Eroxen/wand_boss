execute if entity @s[tag=wandboss.projectile.tag_owner] run function wandboss:entity/projectile/generic/tag_owner

execute if entity @s[tag=wandboss.projectile.freeze] run function wandboss:entity/projectile/freeze/hit
execute if entity @s[tag=wandboss.projectile.vampire] run function wandboss:entity/projectile/vampire/hit
execute if entity @s[tag=wandboss.projectile.explosion] run function wandboss:entity/projectile/explosion/hit
execute if entity @s[tag=wandboss.projectile.poison] run function wandboss:entity/projectile/poison/hit

execute if entity @s[tag=wandboss.projectile.tag_owner] run tag @e[type=#wandboss:magic_user,tag=wandboss.entity.current_magic_user] remove wandboss.entity.current_magic_user
kill @s