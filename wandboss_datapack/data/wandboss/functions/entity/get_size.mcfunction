scoreboard players set size wandboss.calc 16000000
execute at @s positioned ~16 ~ ~ facing ~1 ~ ~ run function wandboss:entity/get_size/16
scoreboard players set op wandboss.calc 500
scoreboard players operation width wandboss.calc = size wandboss.calc
scoreboard players operation width wandboss.calc /= op wandboss.calc

scoreboard players set size wandboss.calc 16000000
execute at @s positioned ~ ~16 ~ facing ~ ~1 ~ run function wandboss:entity/get_size/16
scoreboard players set op wandboss.calc 1000
scoreboard players operation height wandboss.calc = size wandboss.calc
scoreboard players operation height wandboss.calc /= op wandboss.calc