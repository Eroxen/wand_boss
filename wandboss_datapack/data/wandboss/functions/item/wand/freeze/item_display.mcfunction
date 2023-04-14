scoreboard players remove @s wandboss.calc 1
execute if score @s wandboss.calc matches 0 run data modify entity @s {} merge value {transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f]},start_interpolation:0,interpolation_duration:10}
execute if score @s wandboss.calc matches ..-10 run kill @s