# Desc: kicks the player from the recipe table
#
# Called By: nan

execute at @e[distance=...5,type=armor_stand,name="Recipe Book Table"] run setblock ~ ~ ~ air
setblock ~ ~ ~ barrel[facing=down]{CustomName:'{"translate":"container.recipe_table"}'} replace
function rcore:recipe_table/page/home

scoreboard players set page recipepage 0
scoreboard players set page category.0 0
scoreboard players set page category.1 0
scoreboard players set page category.2 0
scoreboard players set page category.3 0
scoreboard players set page category.4 0
scoreboard players set page category.5 0
scoreboard players set page category.6 0
scoreboard players set page category.7 0
scoreboard players set page category.8 0
scoreboard players set page category.9 0
scoreboard players set page category.10 0
scoreboard players set page category.11 0
scoreboard players set page category.12 0
scoreboard players set page category.13 0
scoreboard players set page category.14 0