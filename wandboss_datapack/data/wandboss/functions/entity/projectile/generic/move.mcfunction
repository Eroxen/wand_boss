data modify storage wandboss:calc raycast set value {range:1.0d}
execute store result storage wandboss:calc raycast.range double 0.1 run data get entity @s data.speed
function wandboss:math/ray2

execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:1} run tp @s ^ ^ ^0.1
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:2} run tp @s ^ ^ ^0.2
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:3} run tp @s ^ ^ ^0.3
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:4} run tp @s ^ ^ ^0.4
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:5} run tp @s ^ ^ ^0.5
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:6} run tp @s ^ ^ ^0.6
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:7} run tp @s ^ ^ ^0.7
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:8} run tp @s ^ ^ ^0.8
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:9} run tp @s ^ ^ ^0.9
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:10} run tp @s ^ ^ ^1
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:11} run tp @s ^ ^ ^1.1
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:12} run tp @s ^ ^ ^1.2
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:13} run tp @s ^ ^ ^1.3
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:14} run tp @s ^ ^ ^1.4
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:15} run tp @s ^ ^ ^1.5
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:16} run tp @s ^ ^ ^1.6
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:17} run tp @s ^ ^ ^1.7
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:18} run tp @s ^ ^ ^1.8
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:19} run tp @s ^ ^ ^1.9
execute if data storage wandboss:calc math.ray2{hit:0b} if data entity @s data{speed:20} run tp @s ^ ^ ^2
execute if data storage wandboss:calc math.ray2{hit:1b} at @e[type=marker,tag=wandboss.math.raycast] run function wandboss:entity/projectile/generic/hit