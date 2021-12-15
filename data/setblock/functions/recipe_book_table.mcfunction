# Desc: Places the custom block
#
# Called By: rcore:main_tick

# Success
execute if block ~ ~ ~ #replaceables run function rcore:warn
execute if block ~ ~ ~ #replaceables run playsound minecraft:block.wood.place block @a[distance=..5]
execute if block ~ ~ ~ #replaceables if entity @p[y_rotation=135..179.99] run summon armor_stand ~ ~ ~ {Rotation: [180f],Tags:[RecipeBookTable],Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:sheep_spawn_egg",Count:1b,tag:{CustomModelData:696}}]}
execute if block ~ ~ ~ #replaceables if entity @p[y_rotation=-179.99..-135] run summon armor_stand ~ ~ ~ {Rotation: [180f],Tags:[RecipeBookTable],Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:sheep_spawn_egg",Count:1b,tag:{CustomModelData:696}}]}
execute if block ~ ~ ~ #replaceables if entity @p[y_rotation=-135..-45] run summon armor_stand ~ ~ ~ {Rotation: [270f],Tags:[RecipeBookTable],Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:sheep_spawn_egg",Count:1b,tag:{CustomModelData:696}}]}
execute if block ~ ~ ~ #replaceables if entity @p[y_rotation=-45..45] run summon armor_stand ~ ~ ~ {Rotation: [0f],Tags:[RecipeBookTable],Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:sheep_spawn_egg",Count:1b,tag:{CustomModelData:696}}]}
execute if block ~ ~ ~ #replaceables if entity @p[y_rotation=45..135] run summon armor_stand ~ ~ ~ {Rotation: [90f],Tags:[RecipeBookTable],Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:sheep_spawn_egg",Count:1b,tag:{CustomModelData:696}}]}
execute if block ~ ~ ~ #replaceables run setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"container.recipe_book_table","italic": false}'}

# Failed
execute unless block ~ ~ ~ #replaceables if entity @p[gamemode=!creative] run function give:recipe_book_table

# Cleanup
kill @s[type=marker]