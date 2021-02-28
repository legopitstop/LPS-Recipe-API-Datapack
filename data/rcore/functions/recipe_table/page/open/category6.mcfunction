# Desc: opens catigory and shows first recipe
#
# Called By: rcore:recipe_table/functions/dectclick

# set one to categoy to bring up the first recipe
scoreboard players set page category.6 1

# set one to recipe page to run all other recipes
scoreboard players set page recipepage 1

# allow other packs to set items in the table (set boolean 1)
scoreboard players set boolean recipebookcheck 1