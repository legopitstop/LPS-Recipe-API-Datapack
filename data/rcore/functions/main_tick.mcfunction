# Desc: runs all files (looping)
#
# Called by: rcore:pre_tick

# Blocks
execute as @e[tag=SetCustomCraftingTable] at @s run function setblock:custom_crafting_table
execute as @e[tag=SetRecipeBookTable] at @s run function setblock:recipe_book_table

# Block behaviors
execute as @e[tag=CustomCraftingTable] at @s run function rcore:block/custom_crafitng_table
execute as @e[tag=RecipeBookTable] at @s run function rcore:block/recipe_book_table

# Craft custom crafitng table
execute as @e[nbt={SelectedItem:{id:"minecraft:crafting_table",Count:1b,tag:{display:{Name:'{"text":"Custom Crafting Table"}'}}}}] at @s run function give:custom_crafting_table
execute as @e[nbt={SelectedItem:{id:"minecraft:crafting_table",Count:1b,tag:{display:{Name:'{"text":"custom crafting table"}'}}}}] at @s run function give:custom_crafting_table
execute as @e[nbt={SelectedItem:{id:"minecraft:crafting_table",Count:1b,tag:{display:{Name:'{"text":"CUSTOM CRAFTING TABLE"}'}}}}] at @s run function give:custom_crafting_table
execute as @e[nbt={SelectedItem:{id:"minecraft:crafting_table",Count:1b,tag:{display:{Name:'{"text":"cUSTOM cRAFTING tABLE"}'}}}}] at @s run function give:custom_crafting_table