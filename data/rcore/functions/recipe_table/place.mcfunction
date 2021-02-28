# Desc: Places recipe table blocks
#
# Called By: nan

setblock ~ ~ ~ barrel[facing=down]{CustomName:'{"translate":"container.recipe_table"}'} replace
# summons armor stand based off of your rotation
execute at @p[y_rotation=135..179.99] at @e[type=armor_stand,name="LPS_Recipe"] run summon armor_stand ~ ~ ~ {Rotation:[180f],DisabledSlots:2039583,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:696}}],CustomName:"{\"text\":\"Recipe Book Table\"}"}
execute at @p[y_rotation=-179.99..-135] at @e[type=armor_stand,name="LPS_Recipe"] run summon armor_stand ~ ~ ~ {Rotation:[180f],DisabledSlots:2039583,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:696}}],CustomName:"{\"text\":\"Recipe Book Table\"}"}
execute at @p[y_rotation=-135..-45] at @e[type=armor_stand,name="LPS_Recipe"] run summon armor_stand ~ ~ ~ {Rotation:[270f],DisabledSlots:2039583,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:696}}],CustomName:"{\"text\":\"Recipe Book Table\"}"}
execute at @p[y_rotation=-45..45] at @e[type=armor_stand,name="LPS_Recipe"] run summon armor_stand ~ ~ ~ {Rotation:[0f],DisabledSlots:2039583,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:696}}],CustomName:"{\"text\":\"Recipe Book Table\"}"}
execute at @p[y_rotation=45..135] at @e[type=armor_stand,name="LPS_Recipe"] run summon armor_stand ~ ~ ~ {Rotation:[90f],DisabledSlots:2039583,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:696}}],CustomName:"{\"text\":\"Recipe Book Table\"}"}

function sound:table.place
kill @e[name="LPS_Recipe"]

# set home items
function rcore:recipe_table/page/home