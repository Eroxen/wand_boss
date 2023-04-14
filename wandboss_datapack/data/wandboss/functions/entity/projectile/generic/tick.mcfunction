execute if entity @s[tag=wandboss.projectile.freeze] run particle minecraft:dust_color_transition 1 1 1 1 0 0 1
execute if entity @s[tag=wandboss.projectile.vampire] run particle minecraft:dust_color_transition 1 0 0 1 0 0 0
execute if entity @s[tag=wandboss.projectile.explosion] run particle minecraft:dust_color_transition 1 0.7 0.5 1 0.4 0.4 0.4
execute if entity @s[tag=wandboss.projectile.poison] run particle minecraft:entity_effect ~ ~ ~ 0.576 0.851 0.169 1 0

scoreboard players remove @s wandboss.calc 1
execute if score @s wandboss.calc matches 0.. run function wandboss:entity/projectile/generic/move
execute if score @s wandboss.calc matches ..-1 run kill @s