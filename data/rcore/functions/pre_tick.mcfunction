# Desc: runs all files (looping)
#
# Called by: #minecraft:tick

# tells load to run, then tick can run
execute if entity @a[tag=!rcoreLoad] run function rcore:main_load
execute if entity @r[tag=rcoreTick] run function rcore:main_tick