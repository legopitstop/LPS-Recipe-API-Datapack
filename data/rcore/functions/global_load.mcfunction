tellraw @p {"translate":"lps.reload.message"}

# recipe scoreboard
scoreboard objectives add recipepage dummy "recipepage"
execute unless score page recipepage matches 1.. run scoreboard players set page recipepage 0

# v2.4+ New recipe book category scores
scoreboard objectives add category.0 dummy "category.0"
scoreboard objectives add category.1 dummy "category.1"
scoreboard objectives add category.2 dummy "category.2"
scoreboard objectives add category.3 dummy "category.3"
scoreboard objectives add category.4 dummy "category.4"
scoreboard objectives add category.5 dummy "category.5"
scoreboard objectives add category.6 dummy "category.6"
scoreboard objectives add category.7 dummy "category.7"
scoreboard objectives add category.8 dummy "category.8"
scoreboard objectives add category.9 dummy "category.9"
scoreboard objectives add category.10 dummy "category.10"
scoreboard objectives add category.11 dummy "category.11"
scoreboard objectives add category.12 dummy "category.12"
scoreboard objectives add category.13 dummy "category.13"
scoreboard objectives add category.14 dummy "category.14"
scoreboard players add page category.0 0
scoreboard players add page category.1 0
scoreboard players add page category.2 0
scoreboard players add page category.3 0
scoreboard players add page category.4 0
scoreboard players add page category.5 0
scoreboard players add page category.6 0
scoreboard players add page category.7 0
scoreboard players add page category.8 0
scoreboard players add page category.9 0
scoreboard players add page category.10 0
scoreboard players add page category.11 0
scoreboard players add page category.12 0
scoreboard players add page category.13 0
scoreboard players add page category.14 0

# max pages score
scoreboard objectives add maxpages dummy "maxpages"
scoreboard players set category.0 maxpages 1
scoreboard players set category.1 maxpages 1
scoreboard players set category.2 maxpages 1
scoreboard players set category.3 maxpages 1
scoreboard players set category.4 maxpages 1
scoreboard players set category.5 maxpages 1
scoreboard players set category.6 maxpages 1
scoreboard players set category.7 maxpages 1
scoreboard players set category.8 maxpages 1
scoreboard players set category.9 maxpages 1
scoreboard players set category.10 maxpages 1
scoreboard players set category.11 maxpages 1
scoreboard players set category.12 maxpages 1
scoreboard players set category.13 maxpages 1
scoreboard players set category.14 maxpages 1

# setting scoreboard
scoreboard objectives add apisettings dummy "apisettings"
scoreboard players add creativeinv apisettings 0
scoreboard players add reducelag apisettings 0
execute if score lagblocks apisettings matches ..0 run scoreboard players set lagblocks apisettings 5
execute if score refresh apisettings matches ..0 run scoreboard players set refresh apisettings 3

# crafting table scoreboard
scoreboard objectives add craftingtable dummy "craftingtable"
scoreboard players set total craftingtable 0

# recipe book scoreboard
scoreboard objectives add recipebook dummy "recipebook"
scoreboard players set total recipebook 0

# New v2.6 recipe table UI system
scoreboard objectives add recipebookcheck dummy "recipebookcheck"
scoreboard players set boolean recipebookcheck 0