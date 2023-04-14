execute if score d_n_x wandboss.calc = d_min wandboss.calc if score d_x wandboss.calc matches -1 run data modify storage wandboss:calc math.ray2.hit_info.full_face_normal set value {x:1}
execute if score d_n_x wandboss.calc = d_min wandboss.calc if score d_x wandboss.calc matches 1 run data modify storage wandboss:calc math.ray2.hit_info.full_face_normal set value {x:-1}
execute if score d_n_y wandboss.calc = d_min wandboss.calc if score d_y wandboss.calc matches -1 run data modify storage wandboss:calc math.ray2.hit_info.full_face_normal set value {y:1}
execute if score d_n_y wandboss.calc = d_min wandboss.calc if score d_y wandboss.calc matches 1 run data modify storage wandboss:calc math.ray2.hit_info.full_face_normal set value {y:-1}
execute if score d_n_z wandboss.calc = d_min wandboss.calc if score d_z wandboss.calc matches -1 run data modify storage wandboss:calc math.ray2.hit_info.full_face_normal set value {z:1}
execute if score d_n_z wandboss.calc = d_min wandboss.calc if score d_z wandboss.calc matches 1 run data modify storage wandboss:calc math.ray2.hit_info.full_face_normal set value {z:-1}

data modify storage wandboss:calc math.ray2 merge value {hit:1b,stop:1b}

scoreboard players operation total_d wandboss.calc = d_min wandboss.calc