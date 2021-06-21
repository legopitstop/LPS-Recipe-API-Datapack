# Desc: Runs other RcoreAPI functions
#
# Called by: #minecraft:tick

# Crafting Table
execute at @e[tag=custom_crafting_table] run function rcore_recipes:function/recipe_tick_123456

# Recipe Book Table
execute at @e[tag=recipe_book_table] if score boolean recipebookcheck matches 1.. run function rcore_recipes:recipe_book/pages_123456