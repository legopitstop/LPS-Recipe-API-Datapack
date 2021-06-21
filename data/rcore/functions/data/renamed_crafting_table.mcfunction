# Desc: Give the renamed item in the same count
#
# Called By: rcore:gobal_tick

# store the number of items
execute store result score @s CraftingCount run data get entity @s SelectedItem.Count

# Failed
execute if score @s CraftingCount matches 65.. run title @s actionbar {"translate":"rename_crafting_table.failed","color":"#ff0000","with":[{"text":"64"}]}

# Success
execute if score @s CraftingCount matches ..64 run title @s actionbar {"translate":"rename_crafting_table.success","color":"#00ff00","with":[{"score":{"name":"@s","objective": "CraftingCount"}}]}
execute if score @s CraftingCount matches ..64 run item replace entity @s weapon.mainhand with sheep_spawn_egg{id: "rcore:custom_crafting_table", display: {Name: '{"translate":"block.rcore.crafting_table","italic":false}'}, CustomModelData: 666, EntityTag: {id: "minecraft:marker", Tags: ["set_custom_crafting_table"]}}
execute if score @s CraftingCount matches ..64 run item modify entity @s weapon rcore:renamed_crafting_table

# reset
scoreboard players reset @s CraftingCount