execute store success score entity.get_size.4 wandboss.calc if entity @s[dx=0,dy=0,dz=0]

execute if score entity.get_size.4 wandboss.calc matches 0 run scoreboard players remove size wandboss.calc 2000000
execute if score entity.get_size.4 wandboss.calc matches 1 run scoreboard players add size wandboss.calc 2000000

execute if score entity.get_size.4 wandboss.calc matches 0 positioned ^ ^ ^-2 run function wandboss:entity/get_size/2
execute if score entity.get_size.4 wandboss.calc matches 1 positioned ^ ^ ^2 run function wandboss:entity/get_size/2