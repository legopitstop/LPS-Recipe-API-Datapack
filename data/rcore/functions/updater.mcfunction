# Desc: Converts the old items and blocks to the new items and blocks
#
# Called By: rcore:global_tick

# Blocks
execute as @e[name="Recipe Book Table"] at @s run setblock ~ ~ ~ air
execute as @e[name="Recipe Book Table"] at @s run summon marker ~ ~-0.5 ~ {Tags:["set_recipe_book_table"]}
execute as @e[name="Recipe Book Table"] at @s run kill @s

execute as @e[name="LPS_Recipe"] at @s run setblock ~ ~ ~ air
execute as @e[name="LPS_Recipe"] at @s run summon marker ~ ~-0.5 ~ {Tags:["set_recipe_book_table"]}
execute as @e[name="LPS_Recipe"] at @s run kill @s

execute as @e[name="Crafting Table"] at @s run setblock ~ ~ ~ air
execute as @e[name="Crafting Table"] at @s run summon marker ~ ~-0.5 ~ {Tags:["set_custom_crafting_table"]}
execute as @e[name="Crafting Table"] at @s run kill @s

execute as @e[name="LPS_Table"] at @s run setblock ~ ~ ~ air
execute as @e[name="LPS_Table"] at @s run summon marker ~ ~-0.5 ~ {Tags:["set_custom_crafting_table"]}
execute as @e[name="LPS_Table"] at @s run kill @s

# Items
execute as @a[nbt={SelectedItem:{tag:{display:{Name:'{"translate":"block.lps:crafting_table"}'}}}}] at @s run function give:crafting_table
execute as @a[nbt={SelectedItem:{tag:{display:{Name:'{"translate":"block.lps:crafting_table"}'}}}}] at @s run item replace entity @p weapon.mainhand with air

execute as @a[nbt={SelectedItem:{tag:{display:{Name:'{"translate":"block.lps:recipe_book_table"}'}}}}] at @s run function give:recipe_book_table
execute as @a[nbt={SelectedItem:{tag:{display:{Name:'{"translate":"block.lps:recipe_book_table"}'}}}}] at @s run item replace entity @p weapon.mainhand with air
