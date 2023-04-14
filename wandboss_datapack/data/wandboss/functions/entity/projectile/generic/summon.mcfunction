data modify storage wandboss:calc EntityData set value {Tags:["wandboss.projectile"],data:{speed:5}}

execute if data storage wandboss:calc projectile.EntityData run data modify storage wandboss:calc EntityData merge from storage wandboss:calc projectile.EntityData

execute if data storage wandboss:calc projectile.Owner run data modify storage wandboss:calc EntityData.data.Owner set from storage wandboss:calc projectile.Owner

execute if data storage wandboss:calc projectile.speed run data modify storage wandboss:calc EntityData.data.speed set from storage wandboss:calc projectile.speed

execute if data storage wandboss:calc projectile.Rotation run data modify storage wandboss:calc EntityData.Rotation set from storage wandboss:calc projectile.Rotation

execute if data storage wandboss:calc projectile.Tags run data modify storage wandboss:calc EntityData.Tags append from storage wandboss:calc projectile.Tags[]

summon marker ~ ~ ~ {Tags:["wandboss.projectile.new"]}
execute unless data storage wandboss:calc projectile.duration run scoreboard players set @e[type=marker,tag=wandboss.projectile.new,distance=..0.1,limit=1] wandboss.calc 20
execute if data storage wandboss:calc projectile.duration store result score @e[type=marker,tag=wandboss.projectile.new,distance=..0.1,limit=1] wandboss.calc run data get storage wandboss:calc projectile.duration

data modify entity @e[type=marker,tag=wandboss.projectile.new,distance=..0.1,limit=1] {} merge from storage wandboss:calc EntityData