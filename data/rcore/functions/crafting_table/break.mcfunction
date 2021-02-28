# Desc: break the crafting table
#
# Called By: nan

# crafting table break
gamerule doTileDrops false
execute at @p[gamemode=survival] run function give:crafting_table
execute at @e[distance=...5,name="Crafting Table"] run setblock ~ ~ ~ air destroy
execute at @e[type=armor_stand,name="Crafting Table"] run function particle:table.break
function sound:table.break
kill @e[distance=...5,name="Crafting Table"]
kill @e[distance=..1,type=item,nbt={Item:{id:"minecraft:dropper"}}]
gamerule doTileDrops true