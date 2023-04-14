function wandboss:entity/get_size
scoreboard players add width wandboss.calc 100
scoreboard players add height wandboss.calc 100

data modify storage wandboss:calc EntityData set value {Tags:["wandboss.item.wand.freeze.effect"],item:{Count:1b,id:"minecraft:ice"},transformation:{translation:[0f,0f,0f],scale:[1f,1f,1f]},item_display:"none"}
execute store result storage wandboss:calc EntityData.transformation.scale[0] float 0.001 run scoreboard players get width wandboss.calc
execute store result storage wandboss:calc EntityData.transformation.scale[1] float 0.001 run scoreboard players get height wandboss.calc
execute store result storage wandboss:calc EntityData.transformation.scale[2] float 0.001 run scoreboard players get width wandboss.calc

execute store result storage wandboss:calc EntityData.transformation.translation[1] float 0.0005 run scoreboard players get height wandboss.calc

summon item_display ~ ~ ~ {Tags:["wandboss.item.wand.freeze.effect"]}
scoreboard players set @e[type=item_display,tag=wandboss.item.wand.freeze.effect,distance=..0.1,limit=1] wandboss.calc 40
data modify entity @e[type=item_display,tag=wandboss.item.wand.freeze.effect,distance=..0.1,limit=1] {} merge from storage wandboss:calc EntityData
effect give @s minecraft:slowness 2 4