# Desc: Reduce lag, limts how many tables that are placed
#
# Called By: nan

#> Crafting Table
scoreboard players operation total craftingtable += @e[tag=custom_crafting_table] craftingtable
execute if score total craftingtable > lagblocks apisettings at @p at @e[tag=custom_crafting_table,sort=nearest,limit=1] run setblock ~ ~ ~ air
execute if score total craftingtable > lagblocks apisettings at @p at @e[tag=custom_crafting_table,sort=nearest,limit=1] run tellraw @p ["",{"translate":"rcore.gui.removed"},{"score":{"name":"lagblocks","objective":"apisettings"},"color":"red"},{"translate":"rcore.gui.removed2"}]
scoreboard players set total craftingtable 0

#> Recipe Book Table
scoreboard players operation total recipebook += @e[tag=recipe_book_table] recipebook
execute if score total recipebook > lagblocks apisettings at @p at @e[tag=recipe_book_table,sort=nearest,limit=1] run setblock ~ ~ ~ air
execute if score total recipebook > lagblocks apisettings at @p at @e[tag=recipe_book_table,sort=nearest,limit=1] run tellraw @p ["",{"translate":"rcore.gui.removed"},{"score":{"name":"lagblocks","objective":"apisettings"},"color":"red"},{"translate":"rcore.gui.removed2"}]
scoreboard players set total recipebook 0