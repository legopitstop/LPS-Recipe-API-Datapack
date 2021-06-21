# Desc: The blocks properties
#
# Called By: rcore:global_tick

# remove the block when broken
execute unless block ~ ~ ~ barrel if entity @a[gamemode=!creative,distance=..5] run function give:recipe_book_table
execute unless block ~ ~ ~ barrel run kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:barrel"}}]
execute unless block ~ ~ ~ barrel run kill @s

# Run other functions
execute if block ~ ~ ~ barrel[open=true] run function rcore:recipe_table/event_listener
function rcore:recipe_table/max_pages