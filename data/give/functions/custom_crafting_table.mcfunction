# Desc: Spawns the custom item
#
# Called by: Player & rcore_recipes:recipe/customitem

summon item ~ ~1 ~ {Item:{id:"minecraft:sheep_spawn_egg",Count:1b,tag:{id:"rcore:custom_crafting_table",CustomModelData:666,display:{Name:'{"translate":"block.rcore.custom_crafting_table","italic": false}'},EntityTag:{id:"minecraft:marker",Tags:[SetCustomCraftingTable]}}}}

# remove item
item replace entity @s weapon.mainhand with air