execute as @a[scores={wandboss.use.carrot_on_a_stick=1..}] at @s run function wandboss:trigger/use_carrot_on_a_stick

execute as @e[type=item_display,tag=wandboss.item.wand.freeze.effect] at @s run function wandboss:item/wand/freeze/item_display

execute as @e[type=marker,tag=wandboss.projectile] at @s run function wandboss:entity/projectile/generic/tick