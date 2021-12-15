# Desc: The behavior for the block
#
# Called By: rcore:main_tick

# break
execute unless block ~ ~ ~ dropper if entity @p[gamemode=!creative] run function give:custom_crafting_table
execute unless block ~ ~ ~ dropper run kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},limit=1,distance=..2]
execute unless block ~ ~ ~ dropper run kill @s