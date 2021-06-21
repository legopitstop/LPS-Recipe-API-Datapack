# Desc: The blocks properties
#
# Called By: rcore:global_tick

# remove the block when broken
execute unless block ~ ~ ~ dropper if entity @a[gamemode=!creative,distance=..5] run function give:crafting_table
execute unless block ~ ~ ~ dropper run kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:dropper"}}]
execute unless block ~ ~ ~ dropper run kill @s