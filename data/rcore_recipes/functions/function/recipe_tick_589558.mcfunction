# Desc: All recipes
#
# Called By: rcore_recipes:tick_182903

execute if block ~ ~ ~ minecraft:dropper[facing=down]{Items: [{id: "minecraft:book", Count: 1b, Slot: 1b}, {id: "minecraft:crafting_table", Count: 1b, Slot: 4b}, {id: "minecraft:dispenser", Count: 1b, Slot: 7b}]} unless block ~ ~ ~ minecraft:dropper[facing=down]{Items: [{Slot: 0b}]} unless block ~ ~ ~ minecraft:dropper[facing=down]{Items: [{Slot: 2b}]} unless block ~ ~ ~ minecraft:dropper[facing=down]{Items: [{Slot: 3b}]} unless block ~ ~ ~ minecraft:dropper[facing=down]{Items: [{Slot: 5b}]} unless block ~ ~ ~ minecraft:dropper[facing=down]{Items: [{Slot: 6b}]} unless block ~ ~ ~ minecraft:dropper[facing=down]{Items: [{Slot: 8b}]} run function rcore_recipes:recipe/recipe_book_table