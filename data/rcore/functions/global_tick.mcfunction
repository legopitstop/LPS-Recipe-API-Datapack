# Desc: main looping file
#
# Called By: #minecraft:tick

# run other functions
function rcore:illegal_items

# API Settings
execute if score lagblocks apisettings matches ..0 run tellraw @p {"translate":"rcore.gui.error"}
execute if score lagblocks apisettings matches ..0 run scoreboard players set lagblocks apisettings 5
execute if score refresh apisettings matches ..0 run tellraw @p {"translate":"rcore.gui.error"}
execute if score refresh apisettings matches ..0 run scoreboard players set refresh apisettings 3

# reduce lag
execute as @e[tag=custom_crafting_table] run scoreboard players set @s craftingtable 1
execute as @e[tag=recipe_book_table] run scoreboard players set @s recipebook 1
execute if score reducelag apisettings matches 1.. run function rcore:data/reduce_lag

# OLD Blocks
## Recipe Book Table
#execute as @e[type=armor_stand,name="LPS_Recipe"] at @s run function rcore:recipe_table/place
#execute as @e[type=armor_stand,name="Recipe Book Table"] at @s run function rcore:recipe_table/break
## Crafting Table
#execute as @e[type=armor_stand,name="LPS_Table"] at @s run function rcore:crafting_table/place
#execute as @e[type=armor_stand,name="Crafting Table"] at @s run function rcore:crafting_table/break

# NEW Blocks
execute as @e[tag=set_recipe_book_table] at @s run function rcore:blocks/set_recipe_book_table
execute as @e[tag=recipe_book_table] at @s run function rcore:blocks/recipe_book_table

execute as @e[tag=set_custom_crafting_table] at @s run function rcore:blocks/set_custom_crafting_table
execute as @e[tag=custom_crafting_table] at @s run function rcore:blocks/custom_crafting_table

# Rename item to "Custom Crafting Table"
execute as @a[nbt={SelectedItem:{id:"minecraft:crafting_table",tag:{display:{Name:'{"text":"Custom Crafting Table"}'}}}}] at @s run function rcore:data/renamed_crafting_table
execute as @a[nbt={SelectedItem:{id:"minecraft:crafting_table",tag:{display:{Name:'{"text":"custom crafting table"}'}}}}] at @s run function rcore:data/renamed_crafting_table
execute as @a[nbt={SelectedItem:{id:"minecraft:crafting_table",tag:{display:{Name:'{"text":"CUSTOM CRAFTING TABLE"}'}}}}] at @s run function rcore:data/renamed_crafting_table

# Updater
function rcore:updater