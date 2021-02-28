# Desc: runs multiple other files that are ticked
#
# Called By: #minecraft:tick

execute at @e[type=armor_stand,name="Recipe Book Table"] if block ~ ~ ~ barrel[open=true] run function rcore:recipe_table/functions/dectclick
function rcore:recipe_table/functions/maxpages