# Desc: Places the custom block
#
# Called By: rcore:main_tick

# Success
execute if block ~ ~ ~ #replaceables run playsound minecraft:block.stone.place block @a[distance=..5]
execute if block ~ ~ ~ #replaceables if entity @p[y_rotation=135..179.99] run summon armor_stand ~ ~ ~ {Rotation: [180f],Tags:["CustomCraftingTable","custom_crafting_table"],Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:sheep_spawn_egg",Count:1b,tag:{CustomModelData:666}}]}
execute if block ~ ~ ~ #replaceables if entity @p[y_rotation=-179.99..-135] run summon armor_stand ~ ~ ~ {Rotation: [180f],Tags:["CustomCraftingTable","custom_crafting_table"],Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:sheep_spawn_egg",Count:1b,tag:{CustomModelData:666}}]}
execute if block ~ ~ ~ #replaceables if entity @p[y_rotation=-135..-45] run summon armor_stand ~ ~ ~ {Rotation: [270f],Tags:["CustomCraftingTable","custom_crafting_table"],Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:sheep_spawn_egg",Count:1b,tag:{CustomModelData:666}}]}
execute if block ~ ~ ~ #replaceables if entity @p[y_rotation=-45..45] run summon armor_stand ~ ~ ~ {Rotation: [0f],Tags:["CustomCraftingTable","custom_crafting_table"],Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:sheep_spawn_egg",Count:1b,tag:{CustomModelData:666}}]}
execute if block ~ ~ ~ #replaceables if entity @p[y_rotation=45..135] run summon armor_stand ~ ~ ~ {Rotation: [90f],Tags:["CustomCraftingTable","custom_crafting_table"],Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:sheep_spawn_egg",Count:1b,tag:{CustomModelData:666}}]}
execute if block ~ ~ ~ #replaceables run setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"container.custom_crafting_table","italic": false}'}

# Failed
execute unless block ~ ~ ~ #replaceables if entity @p[gamemode=!creative] run function give:custom_crafting_table

# Cleanup
kill @s[type=marker]