###
# intersection data
# px: data for faces that can be intercected when going in positive x direction, ny: data for faces that can be intercected when going in negative y direction, etc.
# list of dicts with keys s and partial, must be sorted on s (high to low if nx, ny, nz, low to high if px, py, pz. sorted in the order of near to far.)
# s: double, x-value (for px, nx) of the face
# partial (optional): list of dicts with keys x, y, z
# x, y, z: list of [double, double] which give the limits of the face. multiple dicts allows multiple boxes on the same x-level
###
data modify storage wandboss:calc math.ray2.partial_int set value {px:[],nx:[],py:[],ny:[],pz:[],nz:[]}

data modify storage wandboss:calc math.ray2.partial set value {x:[],y:[],z:[]}

execute if block ~ ~ ~ #wandboss:ray2/generated/group_redstone_wire run function wandboss:math/ray2/hit/partial/generated/group_redstone_wire
execute if block ~ ~ ~ #wandboss:ray2/generated/group_acacia_leaves run function wandboss:math/ray2/hit/partial/generated/group_acacia_leaves
execute if block ~ ~ ~ #wandboss:ray2/generated/group_fire run function wandboss:math/ray2/hit/partial/generated/group_fire
execute if block ~ ~ ~ #wandboss:ray2/generated/group_andesite_wall run function wandboss:math/ray2/hit/partial/generated/group_andesite_wall
execute if block ~ ~ ~ #wandboss:ray2/generated/group_glow_lichen run function wandboss:math/ray2/hit/partial/generated/group_glow_lichen
execute if block ~ ~ ~ #wandboss:ray2/generated/group_tripwire run function wandboss:math/ray2/hit/partial/generated/group_tripwire
execute if block ~ ~ ~ #wandboss:ray2/generated/group_sculk_sensor run function wandboss:math/ray2/hit/partial/generated/group_sculk_sensor
execute if block ~ ~ ~ #wandboss:ray2/generated/group_acacia_stairs run function wandboss:math/ray2/hit/partial/generated/group_acacia_stairs
execute if block ~ ~ ~ #wandboss:ray2/generated/group_acacia_hanging_sign run function wandboss:math/ray2/hit/partial/generated/group_acacia_hanging_sign
execute if block ~ ~ ~ #wandboss:ray2/generated/group_acacia_trapdoor run function wandboss:math/ray2/hit/partial/generated/group_acacia_trapdoor
execute if block ~ ~ ~ #wandboss:ray2/generated/group_acacia_door run function wandboss:math/ray2/hit/partial/generated/group_acacia_door
execute if block ~ ~ ~ #wandboss:ray2/generated/group_chorus_plant run function wandboss:math/ray2/hit/partial/generated/group_chorus_plant
execute if block ~ ~ ~ #wandboss:ray2/generated/group_comparator run function wandboss:math/ray2/hit/partial/generated/group_comparator
execute if block ~ ~ ~ #wandboss:ray2/generated/group_cactus run function wandboss:math/ray2/hit/partial/generated/group_cactus
execute if block ~ ~ ~ #wandboss:ray2/generated/group_mangrove_propagule run function wandboss:math/ray2/hit/partial/generated/group_mangrove_propagule
execute if block ~ ~ ~ #wandboss:ray2/generated/group_acacia_sign run function wandboss:math/ray2/hit/partial/generated/group_acacia_sign
execute if block ~ ~ ~ #wandboss:ray2/generated/group_acacia_fence_gate run function wandboss:math/ray2/hit/partial/generated/group_acacia_fence_gate
execute if block ~ ~ ~ #wandboss:ray2/generated/group_acacia_fence run function wandboss:math/ray2/hit/partial/generated/group_acacia_fence
execute if block ~ ~ ~ #wandboss:ray2/generated/group_daylight_detector run function wandboss:math/ray2/hit/partial/generated/group_daylight_detector
execute if block ~ ~ ~ #wandboss:ray2/generated/group_bell run function wandboss:math/ray2/hit/partial/generated/group_bell
execute if block ~ ~ ~ #wandboss:ray2/generated/group_black_stained_glass_pane run function wandboss:math/ray2/hit/partial/generated/group_black_stained_glass_pane
execute if block ~ ~ ~ #wandboss:ray2/generated/group_scaffolding run function wandboss:math/ray2/hit/partial/generated/group_scaffolding
execute if block ~ ~ ~ #wandboss:ray2/generated/group_vine run function wandboss:math/ray2/hit/partial/generated/group_vine
execute if block ~ ~ ~ #wandboss:ray2/generated/group_big_dripleaf run function wandboss:math/ray2/hit/partial/generated/group_big_dripleaf
execute if block ~ ~ ~ #wandboss:ray2/generated/group_air run function wandboss:math/ray2/hit/partial/generated/group_air
execute if block ~ ~ ~ #wandboss:ray2/generated/group_campfire run function wandboss:math/ray2/hit/partial/generated/group_campfire
execute if block ~ ~ ~ #wandboss:ray2/generated/group_twisting_vines run function wandboss:math/ray2/hit/partial/generated/group_twisting_vines
execute if block ~ ~ ~ #wandboss:ray2/generated/group_weeping_vines run function wandboss:math/ray2/hit/partial/generated/group_weeping_vines
execute if block ~ ~ ~ #wandboss:ray2/generated/group_kelp run function wandboss:math/ray2/hit/partial/generated/group_kelp
execute if block ~ ~ ~ #wandboss:ray2/generated/group_acacia_button run function wandboss:math/ray2/hit/partial/generated/group_acacia_button
execute if block ~ ~ ~ #wandboss:ray2/generated/group_lever run function wandboss:math/ray2/hit/partial/generated/group_lever
execute if block ~ ~ ~ #wandboss:ray2/generated/group_chest run function wandboss:math/ray2/hit/partial/generated/group_chest
execute if block ~ ~ ~ #wandboss:ray2/generated/group_end_rod run function wandboss:math/ray2/hit/partial/generated/group_end_rod
execute if block ~ ~ ~ #wandboss:ray2/generated/group_piston_head run function wandboss:math/ray2/hit/partial/generated/group_piston_head
execute if block ~ ~ ~ #wandboss:ray2/generated/group_activator_rail run function wandboss:math/ray2/hit/partial/generated/group_activator_rail
execute if block ~ ~ ~ #wandboss:ray2/generated/group_rail run function wandboss:math/ray2/hit/partial/generated/group_rail
execute if block ~ ~ ~ #wandboss:ray2/generated/group_pointed_dripstone run function wandboss:math/ray2/hit/partial/generated/group_pointed_dripstone
execute if block ~ ~ ~ #wandboss:ray2/generated/group_black_candle run function wandboss:math/ray2/hit/partial/generated/group_black_candle
execute if block ~ ~ ~ #wandboss:ray2/generated/group_heavy_weighted_pressure_plate run function wandboss:math/ray2/hit/partial/generated/group_heavy_weighted_pressure_plate
execute if block ~ ~ ~ #wandboss:ray2/generated/group_creeper_head run function wandboss:math/ray2/hit/partial/generated/group_creeper_head
execute if block ~ ~ ~ #wandboss:ray2/generated/group_piglin_head run function wandboss:math/ray2/hit/partial/generated/group_piglin_head
execute if block ~ ~ ~ #wandboss:ray2/generated/group_tripwire_hook run function wandboss:math/ray2/hit/partial/generated/group_tripwire_hook
execute if block ~ ~ ~ #wandboss:ray2/generated/group_lectern run function wandboss:math/ray2/hit/partial/generated/group_lectern
execute if block ~ ~ ~ #wandboss:ray2/generated/group_black_bed run function wandboss:math/ray2/hit/partial/generated/group_black_bed
execute if block ~ ~ ~ #wandboss:ray2/generated/group_sugar_cane run function wandboss:math/ray2/hit/partial/generated/group_sugar_cane
execute if block ~ ~ ~ #wandboss:ray2/generated/group_crimson_roots run function wandboss:math/ray2/hit/partial/generated/group_crimson_roots
execute if block ~ ~ ~ #wandboss:ray2/generated/group_turtle_egg run function wandboss:math/ray2/hit/partial/generated/group_turtle_egg
execute if block ~ ~ ~ #wandboss:ray2/generated/group_piston run function wandboss:math/ray2/hit/partial/generated/group_piston
execute if block ~ ~ ~ #wandboss:ray2/generated/group_cocoa run function wandboss:math/ray2/hit/partial/generated/group_cocoa
execute if block ~ ~ ~ #wandboss:ray2/generated/group_bamboo run function wandboss:math/ray2/hit/partial/generated/group_bamboo
execute if block ~ ~ ~ #wandboss:ray2/generated/group_grindstone run function wandboss:math/ray2/hit/partial/generated/group_grindstone
execute if block ~ ~ ~ #wandboss:ray2/generated/group_medium_amethyst_bud run function wandboss:math/ray2/hit/partial/generated/group_medium_amethyst_bud
execute if block ~ ~ ~ #wandboss:ray2/generated/group_amethyst_cluster run function wandboss:math/ray2/hit/partial/generated/group_amethyst_cluster
execute if block ~ ~ ~ #wandboss:ray2/generated/group_small_amethyst_bud run function wandboss:math/ray2/hit/partial/generated/group_small_amethyst_bud
execute if block ~ ~ ~ #wandboss:ray2/generated/group_large_amethyst_bud run function wandboss:math/ray2/hit/partial/generated/group_large_amethyst_bud
execute if block ~ ~ ~ #wandboss:ray2/generated/group_hopper run function wandboss:math/ray2/hit/partial/generated/group_hopper
execute if block ~ ~ ~ #wandboss:ray2/generated/group_composter run function wandboss:math/ray2/hit/partial/generated/group_composter
execute if block ~ ~ ~ #wandboss:ray2/generated/group_acacia_wall_hanging_sign run function wandboss:math/ray2/hit/partial/generated/group_acacia_wall_hanging_sign
execute if block ~ ~ ~ #wandboss:ray2/generated/group_acacia_wall_sign run function wandboss:math/ray2/hit/partial/generated/group_acacia_wall_sign
execute if block ~ ~ ~ #wandboss:ray2/generated/group_brain_coral_wall_fan run function wandboss:math/ray2/hit/partial/generated/group_brain_coral_wall_fan
execute if block ~ ~ ~ #wandboss:ray2/generated/group_ender_chest run function wandboss:math/ray2/hit/partial/generated/group_ender_chest
execute if block ~ ~ ~ #wandboss:ray2/generated/group_melon_stem run function wandboss:math/ray2/hit/partial/generated/group_melon_stem
execute if block ~ ~ ~ #wandboss:ray2/generated/group_snow run function wandboss:math/ray2/hit/partial/generated/group_snow
execute if block ~ ~ ~ #wandboss:ray2/generated/group_redstone_wall_torch run function wandboss:math/ray2/hit/partial/generated/group_redstone_wall_torch
execute if block ~ ~ ~ #wandboss:ray2/generated/group_big_dripleaf_stem run function wandboss:math/ray2/hit/partial/generated/group_big_dripleaf_stem
execute if block ~ ~ ~ #wandboss:ray2/generated/group_sea_pickle run function wandboss:math/ray2/hit/partial/generated/group_sea_pickle
execute if block ~ ~ ~ #wandboss:ray2/generated/group_carrots run function wandboss:math/ray2/hit/partial/generated/group_carrots
execute if block ~ ~ ~ #wandboss:ray2/generated/group_wheat run function wandboss:math/ray2/hit/partial/generated/group_wheat
execute if block ~ ~ ~ #wandboss:ray2/generated/group_brewing_stand run function wandboss:math/ray2/hit/partial/generated/group_brewing_stand
execute if block ~ ~ ~ #wandboss:ray2/generated/group_dirt_path run function wandboss:math/ray2/hit/partial/generated/group_dirt_path
execute if block ~ ~ ~ #wandboss:ray2/generated/group_ladder run function wandboss:math/ray2/hit/partial/generated/group_ladder
execute if block ~ ~ ~ #wandboss:ray2/generated/group_end_portal_frame run function wandboss:math/ray2/hit/partial/generated/group_end_portal_frame
execute if block ~ ~ ~ #wandboss:ray2/generated/group_cake run function wandboss:math/ray2/hit/partial/generated/group_cake
execute if block ~ ~ ~ #wandboss:ray2/generated/group_acacia_slab run function wandboss:math/ray2/hit/partial/generated/group_acacia_slab
execute if block ~ ~ ~ #wandboss:ray2/generated/group_chain run function wandboss:math/ray2/hit/partial/generated/group_chain
execute if block ~ ~ ~ #wandboss:ray2/generated/group_lantern run function wandboss:math/ray2/hit/partial/generated/group_lantern
execute if block ~ ~ ~ #wandboss:ray2/generated/group_beetroots run function wandboss:math/ray2/hit/partial/generated/group_beetroots
execute if block ~ ~ ~ #wandboss:ray2/generated/group_sweet_berry_bush run function wandboss:math/ray2/hit/partial/generated/group_sweet_berry_bush
execute if block ~ ~ ~ #wandboss:ray2/generated/group_black_wall_banner run function wandboss:math/ray2/hit/partial/generated/group_black_wall_banner
execute if block ~ ~ ~ #wandboss:ray2/generated/group_anvil run function wandboss:math/ray2/hit/partial/generated/group_anvil
execute if block ~ ~ ~ #wandboss:ray2/generated/group_piglin_wall_head run function wandboss:math/ray2/hit/partial/generated/group_piglin_wall_head
execute if block ~ ~ ~ #wandboss:ray2/generated/group_nether_wart run function wandboss:math/ray2/hit/partial/generated/group_nether_wart
execute if block ~ ~ ~ #wandboss:ray2/generated/group_creeper_wall_head run function wandboss:math/ray2/hit/partial/generated/group_creeper_wall_head
execute if block ~ ~ ~ #wandboss:ray2/generated/group_attached_melon_stem run function wandboss:math/ray2/hit/partial/generated/group_attached_melon_stem
execute if block ~ ~ ~ #wandboss:ray2/generated/group_cauldron run function wandboss:math/ray2/hit/partial/generated/group_cauldron
execute if block ~ ~ ~ #wandboss:ray2/generated/group_brain_coral_fan run function wandboss:math/ray2/hit/partial/generated/group_brain_coral_fan
execute if block ~ ~ ~ #wandboss:ray2/generated/group_acacia_sapling run function wandboss:math/ray2/hit/partial/generated/group_acacia_sapling
execute if block ~ ~ ~ #wandboss:ray2/generated/group_conduit run function wandboss:math/ray2/hit/partial/generated/group_conduit
execute if block ~ ~ ~ #wandboss:ray2/generated/group_brain_coral run function wandboss:math/ray2/hit/partial/generated/group_brain_coral
execute if block ~ ~ ~ #wandboss:ray2/generated/group_black_candle_cake run function wandboss:math/ray2/hit/partial/generated/group_black_candle_cake
execute if block ~ ~ ~ #wandboss:ray2/generated/group_acacia_pressure_plate run function wandboss:math/ray2/hit/partial/generated/group_acacia_pressure_plate
execute if block ~ ~ ~ #wandboss:ray2/generated/group_redstone_torch run function wandboss:math/ray2/hit/partial/generated/group_redstone_torch
execute if block ~ ~ ~ #wandboss:ray2/generated/group_nether_portal run function wandboss:math/ray2/hit/partial/generated/group_nether_portal
execute if block ~ ~ ~ #wandboss:ray2/generated/group_hanging_roots run function wandboss:math/ray2/hit/partial/generated/group_hanging_roots
execute if block ~ ~ ~ #wandboss:ray2/generated/group_crimson_fungus run function wandboss:math/ray2/hit/partial/generated/group_crimson_fungus
execute if block ~ ~ ~ #wandboss:ray2/generated/group_frogspawn run function wandboss:math/ray2/hit/partial/generated/group_frogspawn
execute if block ~ ~ ~ #wandboss:ray2/generated/group_nether_sprouts run function wandboss:math/ray2/hit/partial/generated/group_nether_sprouts
execute if block ~ ~ ~ #wandboss:ray2/generated/group_brown_mushroom run function wandboss:math/ray2/hit/partial/generated/group_brown_mushroom
execute if block ~ ~ ~ #wandboss:ray2/generated/group_azalea run function wandboss:math/ray2/hit/partial/generated/group_azalea
execute if block ~ ~ ~ #wandboss:ray2/generated/group_black_carpet run function wandboss:math/ray2/hit/partial/generated/group_black_carpet
execute if block ~ ~ ~ #wandboss:ray2/generated/group_spore_blossom run function wandboss:math/ray2/hit/partial/generated/group_spore_blossom
execute if block ~ ~ ~ #wandboss:ray2/generated/group_bamboo_sapling run function wandboss:math/ray2/hit/partial/generated/group_bamboo_sapling
execute if block ~ ~ ~ #wandboss:ray2/generated/group_allium run function wandboss:math/ray2/hit/partial/generated/group_allium
execute if block ~ ~ ~ #wandboss:ray2/generated/group_end_portal run function wandboss:math/ray2/hit/partial/generated/group_end_portal
execute if block ~ ~ ~ #wandboss:ray2/generated/group_enchanting_table run function wandboss:math/ray2/hit/partial/generated/group_enchanting_table
execute if block ~ ~ ~ #wandboss:ray2/generated/group_lily_pad run function wandboss:math/ray2/hit/partial/generated/group_lily_pad

execute if score d_x wandboss.calc matches -1 run data modify storage wandboss:calc math.ray2.partial.x set from storage wandboss:calc math.ray2.partial_int.nx
execute if score d_x wandboss.calc matches 1 run data modify storage wandboss:calc math.ray2.partial.x set from storage wandboss:calc math.ray2.partial_int.px
execute if score d_y wandboss.calc matches -1 run data modify storage wandboss:calc math.ray2.partial.y set from storage wandboss:calc math.ray2.partial_int.ny
execute if score d_y wandboss.calc matches 1 run data modify storage wandboss:calc math.ray2.partial.y set from storage wandboss:calc math.ray2.partial_int.py
execute if score d_z wandboss.calc matches -1 run data modify storage wandboss:calc math.ray2.partial.z set from storage wandboss:calc math.ray2.partial_int.nz
execute if score d_z wandboss.calc matches 1 run data modify storage wandboss:calc math.ray2.partial.z set from storage wandboss:calc math.ray2.partial_int.pz


scoreboard players operation partial_x wandboss.calc = precise_x wandboss.calc
scoreboard players operation partial_y wandboss.calc = precise_y wandboss.calc
scoreboard players operation partial_z wandboss.calc = precise_z wandboss.calc
scoreboard players operation base wandboss.calc = block_x wandboss.calc
scoreboard players operation base wandboss.calc *= precision wandboss.calc
scoreboard players operation partial_x wandboss.calc -= base wandboss.calc
scoreboard players operation base wandboss.calc = block_y wandboss.calc
scoreboard players operation base wandboss.calc *= precision wandboss.calc
scoreboard players operation partial_y wandboss.calc -= base wandboss.calc
scoreboard players operation base wandboss.calc = block_z wandboss.calc
scoreboard players operation base wandboss.calc *= precision wandboss.calc
scoreboard players operation partial_z wandboss.calc -= base wandboss.calc

scoreboard players set partial_d_min wandboss.calc 999999999
scoreboard players set partial_d_x wandboss.calc -1
scoreboard players set partial_d_y wandboss.calc -1
scoreboard players set partial_d_z wandboss.calc -1

scoreboard players set hit_partial wandboss.calc 0
scoreboard players set hit_partial_x wandboss.calc 0
scoreboard players set hit_partial_y wandboss.calc 0
scoreboard players set hit_partial_z wandboss.calc 0

execute if data storage wandboss:calc math.ray2.partial.x[0] run function wandboss:math/ray2/hit/partial/intersect_x_loop
execute if data storage wandboss:calc math.ray2.partial.y[0] run function wandboss:math/ray2/hit/partial/intersect_y_loop
execute if data storage wandboss:calc math.ray2.partial.z[0] run function wandboss:math/ray2/hit/partial/intersect_z_loop
execute if score hit_partial_x wandboss.calc matches 1 run scoreboard players set hit_partial wandboss.calc 1
execute if score hit_partial_y wandboss.calc matches 1 run scoreboard players set hit_partial wandboss.calc 1
execute if score hit_partial_z wandboss.calc matches 1 run scoreboard players set hit_partial wandboss.calc 1

execute if score hit_partial wandboss.calc matches 1 run function wandboss:math/ray2/hit/partial/hit