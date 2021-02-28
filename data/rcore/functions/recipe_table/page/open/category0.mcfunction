# Desc: opens page
#
# Called By: nan

# set one to categoy to bring up the first recipe
scoreboard players set page category.0 1

# set one to recipe page to run all other recipes
scoreboard players set page recipepage 1

# allow other packs to set items in the table (set boolean 1)
scoreboard players set boolean recipebookcheck 1