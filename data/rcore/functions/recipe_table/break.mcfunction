# Desc: Breaks recipe table
#
# Called By: nan

gamerule doTileDrops false
execute at @p[gamemode=survival] run function give:recipe_book_table
execute at @e[distance=...5,name="Recipe Book Table"] run setblock ~ ~ ~ air destroy
function sound:table.break
kill @e[distance=...5,name="Recipe Book Table"]
kill @e[distance=..1,type=item]
gamerule doTileDrops true