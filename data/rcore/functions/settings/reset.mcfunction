# Desc: resets settings to downloaded settings
#
# Called By: rcore:settings

tellraw @p {"text":"Settings Have Been Reset!","color":"red"}

playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.9 .2
gamerule sendCommandFeedback false

# reset scores/settings
scoreboard players set lagblocks apisettings 5
scoreboard players set refresh apisettings 3
scoreboard players set creativeinv apisettings 0
scoreboard players set reducelag apisettings 0

# show updated settings
function rcore:settings