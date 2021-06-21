# Desc: this is where all the reicpes are located, they then run give functions to give the item and clear table.
#
# Called By: rcore_recipes:tick_123456

# below is a sample recipe you can find a simple generator here: https://legopitstop.weebly.com/tools.html
execute if block ~ ~ ~ minecraft:dropper[facing=down]{Items:[{id:"minecraft:stone",Count:1b,Slot:1b},{id:"minecraft:stone",Count:1b,Slot:4b},{id:"minecraft:stone",Count:1b,Slot:7b}]} run function rcore_recipes:recipes/output