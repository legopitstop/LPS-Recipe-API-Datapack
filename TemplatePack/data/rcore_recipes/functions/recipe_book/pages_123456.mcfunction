# Desc: NEW v2.6+ This file has all the code that the API will place in the Recipe table. make sure to change the category number 0-14
#
# Called By: rcore_recipes:tick_123456

#Below is the displayed recipe, add more below                                            v Page Number, make diffrent for each recipe. The rest is what will be shown it is recomended to use the recipe generator to make it easer. https://legopitstop.weebly.com/tools.html
execute if score page category.0 matches 1 run data merge block ~ ~ ~ {Items: [{id: "minecraft:gray_stained_glass_pane", Count: 1b, Slot: 2b, tag: {Recipe: 1, display: {Name: '{"text":" "}'}}}, {id: "minecraft:stone", tag: {Recipe: 1}, Count: 1b, Slot: 3b}, {id: "minecraft:gray_stained_glass_pane", Count: 1b, Slot: 4b, tag: {Recipe: 1, display: {Name: '{"text":" "}'}}}, {id: "minecraft:gray_stained_glass_pane", Count: 1b, Slot: 11b, tag: {Recipe: 1, display: {Name: '{"text":" "}'}}}, {id: "minecraft:stone", tag: {Recipe: 1}, Count: 1b, Slot: 12b}, {id: "minecraft:gray_stained_glass_pane", Count: 1b, Slot: 13b, tag: {Recipe: 1, display: {Name: '{"text":" "}'}}}, {id: "minecraft:gray_stained_glass_pane", Count: 1b, Slot: 20b, tag: {Recipe: 1, display: {Name: '{"text":" "}'}}}, {id: "minecraft:stone", tag: {Recipe: 1}, Count: 1b, Slot: 21b}, {id: "minecraft:gray_stained_glass_pane", Count: 1b, Slot: 22b, tag: {Recipe: 1, display: {Name: '{"text":" "}'}}}, {id: "minecraft:diamond", tag: {Recipe: 1}, Count: b, Slot: 15b}]}

# set maxpages to go to home screen        V (total ammount + one)
scoreboard players set category.0 maxpages 2

# sets recipebookcheck boolean from 0 to 1 (that way it doesn't always run causing issuses.)
execute if score page category.0 matches 1.. run scoreboard players set boolean recipebookcheck 0