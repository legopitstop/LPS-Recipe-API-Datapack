# Desc: This will lock any Recipe book table (barrel) so other players cannot open it when it is occipyed
#
# Called By: nan

execute at @e[type=armor_stand,name="Recipe Book Table"] if block ~ ~ ~ barrel[open=true] run data merge block ~ ~ ~ {Lock:"In Use"}
execute at @e[type=armor_stand,name="Recipe Book Table"] if block ~ ~ ~ barrel[open=false] run data merge block ~ ~ ~ {Lock:[]}