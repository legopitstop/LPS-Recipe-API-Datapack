# Desc: set crafting table
#
# Called By: nan

summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"LPS_Table"}',CustomNameVisible:1b,DisabledSlots:2039583}
execute at @e[type=armor_stand,name="LPS_Table"] run function particle:table.place
function sound:table.place
