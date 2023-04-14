function wandboss:math/ray2/next_block_edge
execute at @s positioned ^ ^ ^0.001 align x align y align z positioned ~0.5 ~0.5 ~0.5 run function wandboss:math/ray2/scan_current_block

execute if score d_min wandboss.calc >= MAX_DISTANCE wandboss.calc run data modify storage wandboss:calc math.ray2.stop set value 1b
execute if data storage wandboss:calc math.ray2{stop:1b} at @s run function wandboss:math/ray2/stop
execute if data storage wandboss:calc math.ray2{stop:0b} run function wandboss:math/ray2/loop