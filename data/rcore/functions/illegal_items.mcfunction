# Desc: Any items with the tag "Recipe:1" will be removed from the world
#
# Called By: nan

kill @e[type=item,nbt={Item:{id:"minecraft:red_stained_glass_pane",Count:1b,tag:{Recipe:1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{Recipe:1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{Recipe:1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:arrow",Count:1b,tag:{Recipe:1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:stone",Count:1b,tag:{Recipe:1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:glass_pane",Count:1b,tag:{Recipe:1}}}]

# inventory item
clear @a #rcore:illegal_gui{Recipe:1}

# recipe items in creative the table will act as a creative tab.
execute if score creativeinv apisettings matches 1.. at @a run clear @a[gamemode=!creative] #rcore:illegal_items{Recipe:1}
execute if score creativeinv apisettings matches ..0 at @a run clear @a #rcore:illegal_items{Recipe:1}