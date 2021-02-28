# Desc: turns creative inv off
#
# Called By: rcore:settings

scoreboard players set creativeinv apisettings 1
function rcore:settings
playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.1 .2