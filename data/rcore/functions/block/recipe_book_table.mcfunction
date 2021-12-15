# Desc: The behavior for the block
#
# Called By: rcore:main_tick

# break
execute unless block ~ ~ ~ barrel if entity @p[gamemode=!creative] run function give:recipe_book_table
execute unless block ~ ~ ~ barrel run kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},limit=1,distance=..2]
execute unless block ~ ~ ~ barrel run kill @s