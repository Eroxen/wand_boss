execute if data entity @s SelectedItem.tag.wandboss{is_wand:1b,wand_name:"freeze"} run function wandboss:item/wand/freeze/use
execute if data entity @s SelectedItem.tag.wandboss{is_wand:1b,wand_name:"vampire"} run function wandboss:item/wand/vampire/use
execute if data entity @s SelectedItem.tag.wandboss{is_wand:1b,wand_name:"explosion"} run function wandboss:item/wand/explosion/use
execute if data entity @s SelectedItem.tag.wandboss{is_wand:1b,wand_name:"poison"} run function wandboss:item/wand/poison/use
execute if data entity @s SelectedItem.tag.wandboss{is_wand:1b,wand_name:"summon"} run function wandboss:item/wand/summon/use
execute if data entity @s SelectedItem.tag.wandboss{is_wand:1b,wand_name:"teleport"} run function wandboss:item/wand/teleport/use

scoreboard players reset @s wandboss.use.carrot_on_a_stick