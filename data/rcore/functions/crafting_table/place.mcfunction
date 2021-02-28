# Desc: places the crafting table
#
# Called By: nan

setblock ~ ~ ~ dropper[facing=down]{CustomName:'{"translate":"container.crafting"}'} replace
# summons armor stand based off of your rotation
execute at @p[y_rotation=135..179.99] at @e[type=armor_stand,name="LPS_Table"] run summon armor_stand ~ ~ ~ {Rotation:[180f],DisabledSlots:2039583,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:666}}],CustomName:"{\"text\":\"Crafting Table\"}"}
execute at @p[y_rotation=-179.99..-135] at @e[type=armor_stand,name="LPS_Table"] run summon armor_stand ~ ~ ~ {Rotation:[180f],DisabledSlots:2039583,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:666}}],CustomName:"{\"text\":\"Crafting Table\"}"}
execute at @p[y_rotation=-135..-45] at @e[type=armor_stand,name="LPS_Table"] run summon armor_stand ~ ~ ~ {Rotation:[270f],DisabledSlots:2039583,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:666}}],CustomName:"{\"text\":\"Crafting Table\"}"}
execute at @p[y_rotation=-45..45] at @e[type=armor_stand,name="LPS_Table"] run summon armor_stand ~ ~ ~ {Rotation:[0f],DisabledSlots:2039583,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:666}}],CustomName:"{\"text\":\"Crafting Table\"}"}
execute at @p[y_rotation=45..135] at @e[type=armor_stand,name="LPS_Table"] run summon armor_stand ~ ~ ~ {Rotation:[90f],DisabledSlots:2039583,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:666}}],CustomName:"{\"text\":\"Crafting Table\"}"}

function sound:table.place
kill @e[name="LPS_Table"]