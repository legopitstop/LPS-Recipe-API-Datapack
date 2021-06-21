# Desc: dects what slot the player has clicked on and chooses what to display
#
# Called By: rcore:recipe_table/tick

# kick player from UI
execute if score page recipepage matches 0.. unless block ~ ~ ~ barrel{Items:[{Slot:26b}]} run function rcore:recipe_table/page/kick

# add/remove score depending on slot selected
execute if score page recipepage matches 1.. if score page category.0 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players remove page category.0 1
execute if score page recipepage matches 1.. if score page category.0 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players add page category.0 1
execute if score page recipepage matches 1.. if score page category.1 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players remove page category.1 1
execute if score page recipepage matches 1.. if score page category.1 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players add page category.1 1
execute if score page recipepage matches 1.. if score page category.2 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players remove page category.2 1
execute if score page recipepage matches 1.. if score page category.2 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players add page category.2 1
execute if score page recipepage matches 1.. if score page category.3 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players remove page category.3 1
execute if score page recipepage matches 1.. if score page category.3 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players add page category.3 1
execute if score page recipepage matches 1.. if score page category.4 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players remove page category.4 1
execute if score page recipepage matches 1.. if score page category.4 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players add page category.4 1
execute if score page recipepage matches 1.. if score page category.5 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players remove page category.5 1
execute if score page recipepage matches 1.. if score page category.5 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players add page category.5 1
execute if score page recipepage matches 1.. if score page category.6 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players remove page category.6 1
execute if score page recipepage matches 1.. if score page category.6 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players add page category.6 1
execute if score page recipepage matches 1.. if score page category.7 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players remove page category.7 1
execute if score page recipepage matches 1.. if score page category.7 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players add page category.7 1
execute if score page recipepage matches 1.. if score page category.8 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players remove page category.8 1
execute if score page recipepage matches 1.. if score page category.8 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players add page category.8 1
execute if score page recipepage matches 1.. if score page category.9 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players remove page category.9 1
execute if score page recipepage matches 1.. if score page category.9 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players add page category.9 1
execute if score page recipepage matches 1.. if score page category.10 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players remove page category.10 1
execute if score page recipepage matches 1.. if score page category.10 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players add page category.10 1
execute if score page recipepage matches 1.. if score page category.11 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players remove page category.11 1
execute if score page recipepage matches 1.. if score page category.11 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players add page category.11 1
execute if score page recipepage matches 1.. if score page category.12 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players remove page category.12 1
execute if score page recipepage matches 1.. if score page category.12 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players add page category.12 1
execute if score page recipepage matches 1.. if score page category.13 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players remove page category.13 1
execute if score page recipepage matches 1.. if score page category.13 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players add page category.13 1
execute if score page recipepage matches 1.. if score page category.14 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players remove page category.14 1
execute if score page recipepage matches 1.. if score page category.14 matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players add page category.14 1

# add score to recipebookcheck boolean to 1 then other pack sets it back to 0
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run scoreboard players set boolean recipebookcheck 1

# home screen
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run function rcore:recipe_table/page/home
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:1b}]} run function rcore:recipe_table/page/home
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:2b}]} run function rcore:recipe_table/page/open/category0
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:3b}]} run function rcore:recipe_table/page/open/category1
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:4b}]} run function rcore:recipe_table/page/open/category2
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:5b}]} run function rcore:recipe_table/page/open/category3
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:6b}]} run function rcore:recipe_table/page/open/category4
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:7b}]} run function rcore:recipe_table/page/home
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run function rcore:recipe_table/page/home
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:9b}]} run function rcore:recipe_table/page/home
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:10b}]} run function rcore:recipe_table/page/home
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:11b}]} run function rcore:recipe_table/page/open/category5
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:12b}]} run function rcore:recipe_table/page/open/category6
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:13b}]} run function rcore:recipe_table/page/open/category7
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:14b}]} run function rcore:recipe_table/page/open/category8
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:15b}]} run function rcore:recipe_table/page/open/category9
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} run function rcore:recipe_table/page/home
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:17b}]} run function rcore:recipe_table/page/home
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:18b}]} run function rcore:recipe_table/page/home
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:19b}]} run function rcore:recipe_table/page/home
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:20b}]} run function rcore:recipe_table/page/open/category10
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:21b}]} run function rcore:recipe_table/page/open/category11
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:22b}]} run function rcore:recipe_table/page/open/category12
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:23b}]} run function rcore:recipe_table/page/open/category13
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:24b}]} run function rcore:recipe_table/page/open/category14
execute if score page recipepage matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:25b}]} run function rcore:recipe_table/page/home

# recipe screen set boolean to recipebookcheck so it will reset the recipe
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:1b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:2b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:3b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:4b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:5b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:6b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:7b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:9b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:10b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:11b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:12b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:13b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:14b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:15b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:17b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:18b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:19b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:20b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:21b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:22b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:23b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:24b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:25b}]} run scoreboard players set boolean recipebookcheck 1
execute if score page recipepage matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:26b}]} run scoreboard players set boolean recipebookcheck 1