execute store success score entity.get_size.16 wandboss.calc if entity @s[dx=0,dy=0,dz=0]

execute if score entity.get_size.16 wandboss.calc matches 0 run scoreboard players remove size wandboss.calc 8000000
execute if score entity.get_size.16 wandboss.calc matches 1 run scoreboard players add size wandboss.calc 8000000

execute if score entity.get_size.16 wandboss.calc matches 0 positioned ^ ^ ^-8 run function wandboss:entity/get_size/8
execute if score entity.get_size.16 wandboss.calc matches 1 positioned ^ ^ ^8 run function wandboss:entity/get_size/8