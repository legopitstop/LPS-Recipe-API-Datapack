# Desc: Spawns the custom item
#
# Called by: Player & rcore_recipes:recipe/customitem

summon item ~ ~1 ~ {Item:{id:"minecraft:sheep_spawn_egg",Count:1b,tag:{id:"rcore:recipe_book_table",CustomModelData:696,display:{Name:'{"translate":"block.rcore.recipe_book_table","italic": false}'},EntityTag:{id:"minecraft:marker",Tags:[SetRecipeBookTable]}}}}