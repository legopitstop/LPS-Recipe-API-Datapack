# Desc: drop items on ground to craft
#
# Called By: nan

kill @e[distance=..5,type=item,nbt={Item:{id:"minecraft:dropper"}}]
kill @e[distance=..5,type=item,nbt={Item:{id:"minecraft:crafting_table"}}]
kill @e[distance=..5,type=item,nbt={Item:{id:"minecraft:diamond"}}]
function particle:table.craft
function give:crafting_table
function sound:table.craft