execute store success score entity.get_size.2 wandboss.calc if entity @s[dx=0,dy=0,dz=0]

execute if score entity.get_size.2 wandboss.calc matches 0 run scoreboard players remove size wandboss.calc 1000000
execute if score entity.get_size.2 wandboss.calc matches 1 run scoreboard players add size wandboss.calc 1000000

execute if score entity.get_size.2 wandboss.calc matches 0 positioned ^ ^ ^-1 run function wandboss:entity/get_size/1
execute if score entity.get_size.2 wandboss.calc matches 1 positioned ^ ^ ^1 run function wandboss:entity/get_size/1