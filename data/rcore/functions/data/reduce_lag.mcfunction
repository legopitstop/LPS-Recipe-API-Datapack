# Desc: Reduce lag, limts how many tables that are placed
#
# Called By: nan

#> Crafting Table
scoreboard players operation total craftingtable += @e[type=armor_stand,name="Crafting Table"] craftingtable
execute if score total craftingtable > lagblocks apisettings at @p at @e[type=armor_stand,name="Crafting Table",sort=nearest,limit=1] run setblock ~ ~ ~ air
execute if score total craftingtable > lagblocks apisettings at @p at @e[type=armor_stand,name="Crafting Table",sort=nearest,limit=1] run tellraw @p ["",{"translate":"rcore.gui.removed"},{"score":{"name":"lagblocks","objective":"apisettings"},"color":"red"},{"translate":"rcore.gui.removed2"}]
scoreboard players set total craftingtable 0

#> Recipe Book Table
scoreboard players operation total recipebook += @e[type=armor_stand,name="Recipe Book Table"] recipebook
execute if score total recipebook > lagblocks apisettings at @p at @e[type=armor_stand,name="Recipe Book Table",sort=nearest,limit=1] run setblock ~ ~ ~ air
execute if score total recipebook > lagblocks apisettings at @p at @e[type=armor_stand,name="Recipe Book Table",sort=nearest,limit=1] run tellraw @p ["",{"translate":"rcore.gui.removed"},{"score":{"name":"lagblocks","objective":"apisettings"},"color":"red"},{"translate":"rcore.gui.removed2"}]
scoreboard players set total recipebook 0