# Desc: turns reducelag off
#
# Called By: rcore:settings

scoreboard players set reducelag apisettings 0
function rcore:settings
playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.1 .2