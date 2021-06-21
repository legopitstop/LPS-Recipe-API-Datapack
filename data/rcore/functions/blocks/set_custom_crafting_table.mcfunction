# Desc: Place the custom block
#
# Called By: rcore:global_tick

# Kill the armor stand if it is not a replaceable block
execute unless block ~ ~ ~ #rcore:block_placeable at @p[gamemode=!creative] run function give:crafting_table
execute unless block ~ ~ ~ #rcore:block_placeable run kill @s

# summons armor stand based off of your rotation
execute if block ~ ~ ~ #rcore:block_placeable if entity @p[y_rotation=135..179.99] run summon armor_stand ~ ~ ~ {Marker: 1b, Rotation: [180f], DisabledSlots: 2039583, NoGravity: 1b, Invisible: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:sheep_spawn_egg", Count: 1b, tag: {CustomModelData: 666}}], Tags:["custom_crafting_table"]}
execute if block ~ ~ ~ #rcore:block_placeable if entity @p[y_rotation=-179.99..-135] run summon armor_stand ~ ~ ~ {Marker: 1b, Rotation: [180f], DisabledSlots: 2039583, NoGravity: 1b, Invisible: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:sheep_spawn_egg", Count: 1b, tag: {CustomModelData: 666}}], Tags:["custom_crafting_table"]}
execute if block ~ ~ ~ #rcore:block_placeable if entity @p[y_rotation=-135..-45] run summon armor_stand ~ ~ ~ {Marker: 1b, Rotation: [270f], DisabledSlots: 2039583, NoGravity: 1b, Invisible: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:sheep_spawn_egg", Count: 1b, tag: {CustomModelData: 666}}], Tags:["custom_crafting_table"]}
execute if block ~ ~ ~ #rcore:block_placeable if entity @p[y_rotation=-45..45] run summon armor_stand ~ ~ ~ {Marker: 1b, Rotation: [0f], DisabledSlots: 2039583, NoGravity: 1b, Invisible: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:sheep_spawn_egg", Count: 1b, tag: {CustomModelData: 666}}], Tags:["custom_crafting_table"]}
execute if block ~ ~ ~ #rcore:block_placeable if entity @p[y_rotation=45..135] run summon armor_stand ~ ~ ~ {Marker: 1b, Rotation: [90f], DisabledSlots: 2039583, NoGravity: 1b, Invisible: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:sheep_spawn_egg", Count: 1b, tag: {CustomModelData: 666}}], Tags:["custom_crafting_table"]}

# place dropper
execute if block ~ ~ ~ #rcore:block_placeable run setblock ~ ~ ~ dropper[facing=down]{CustomName: '{"translate":"container.crafting"}'} replace

# Remove old armorstand
kill @s