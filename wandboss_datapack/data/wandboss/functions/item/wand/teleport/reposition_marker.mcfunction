execute if data storage wandboss:calc math.ray2.hit_info.face_normal.x store result score pos wandboss.calc run data get entity @s Pos[0] 1000
execute if data storage wandboss:calc math.ray2.hit_info.face_normal.y store result score pos wandboss.calc run data get entity @s Pos[1] 1000
execute if data storage wandboss:calc math.ray2.hit_info.face_normal.z store result score pos wandboss.calc run data get entity @s Pos[2] 1000

scoreboard players set op wandboss.calc 2
scoreboard players operation width wandboss.calc /= op wandboss.calc
scoreboard players add width wandboss.calc 100
scoreboard players add height wandboss.calc 100

execute if data storage wandboss:calc math.ray2.hit_info.face_normal{x:1} run scoreboard players operation pos wandboss.calc += width wandboss.calc
execute if data storage wandboss:calc math.ray2.hit_info.face_normal{x:-1} run scoreboard players operation pos wandboss.calc -= width wandboss.calc
execute if data storage wandboss:calc math.ray2.hit_info.face_normal{z:1} run scoreboard players operation pos wandboss.calc += width wandboss.calc
execute if data storage wandboss:calc math.ray2.hit_info.face_normal{z:-1} run scoreboard players operation pos wandboss.calc -= width wandboss.calc
execute if data storage wandboss:calc math.ray2.hit_info.face_normal{y:-1} run scoreboard players operation pos wandboss.calc -= height wandboss.calc

execute if data storage wandboss:calc math.ray2.hit_info.face_normal.x store result entity @s Pos[0] double 0.001 run scoreboard players get pos wandboss.calc
execute if data storage wandboss:calc math.ray2.hit_info.face_normal.y store result entity @s Pos[1] double 0.001 run scoreboard players get pos wandboss.calc
execute if data storage wandboss:calc math.ray2.hit_info.face_normal.z store result entity @s Pos[2] double 0.001 run scoreboard players get pos wandboss.calc