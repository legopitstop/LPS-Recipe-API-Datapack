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
execute at @e[type=armor_stand,name="Crafting Table"] run scoreboard players set @e[type=armor_stand,name="Crafting Table"] craftingtable 1
execute at @e[type=armor_stand,name="Recipe Book Table"] run scoreboard players set @e[type=armor_stand,name="Recipe Book Table"] recipebook 1
execute if score reducelag apisettings matches 1.. run function rcore:data/reduce_lag

#> Recipe Book Table
# tick
execute at @e[type=armor_stand,name="LPS_Recipe"] run function rcore:recipe_table/place
execute at @e[type=armor_stand,name="Recipe Book Table"] run execute if block ~ ~ ~ air run function rcore:recipe_table/break

#> Crafting Table
# tick
execute at @e[type=armor_stand,name="LPS_Table"] run function rcore:crafting_table/place
execute at @e[type=armor_stand,name="Crafting Table"] run execute if block ~ ~ ~ air run function rcore:crafting_table/break
# Rename item to "Custom Crafting Table"
execute as @a[nbt={SelectedItem:{id:"minecraft:crafting_table",tag:{display:{Name:"{\"text\":\"Custom Crafting Table\"}"}}}}] run replaceitem entity @p weapon.mainhand armor_stand{display:{Name:"{\"text\":\"Crafting Table\",\"italic\":false}",Lore:["{\"text\":\"[Block]\",\"color\":\"dark_gray\",\"italic\":false}"]},CustomModelData:666,Craftingtable:1,EntityTag:{NoGravity:1b,Small:1b,Invisible:1b,CustomName:"{\"text\":\"LPS_Table\"}"}} 1