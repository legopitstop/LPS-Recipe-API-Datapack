# Desc: Breaks recipe table
#
# Called By: rcore:global_tick

execute unless block ~ ~ ~ dropper at @p[gamemode=!creative] run function give:crafting_table
execute unless block ~ ~ ~ dropper run kill @e[distance=..1,type=item]
execute unless block ~ ~ ~ dropper run kill @s