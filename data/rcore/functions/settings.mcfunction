# Desc: Shows player their settings
#
# Called By: Player & rcore:config

tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]
tellraw @s [{"translate":"rcore.gui.settings"}]
tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

# True/False settings
execute unless score creativeinv apisettings matches 1.. run tellraw @s ["",{"translate":"rcore.gui.cross","clickEvent":{"action":"run_command","value":"/function rcore:settings/creativeinv_off"}},{"translate":"rcore.gui.creativeinv.desc"}]
execute if score creativeinv apisettings matches 1.. run tellraw @s ["",{"translate":"rcore.gui.check","clickEvent":{"action":"run_command","value":"/function rcore:settings/creativeinv_on"}},{"translate":"rcore.gui.creativeinv.desc"}]

execute unless score reducelag apisettings matches 1.. run tellraw @s ["",{"translate":"rcore.gui.cross","clickEvent":{"action":"run_command","value":"/function rcore:settings/reducelag_on"}},{"translate":"rcore.gui.reducelag.desc"}]
execute if score reducelag apisettings matches 1.. run tellraw @s ["",{"translate":"rcore.gui.check","clickEvent":{"action":"run_command","value":"/function rcore:settings/reducelag_off"}},{"translate":"rcore.gui.reducelag.desc"}]

# Custom Number settings
execute if score lagblocks apisettings matches 5 run tellraw @s ["",{"translate":"rcore.gui.pen","clickEvent":{"action":"suggest_command","value":"/scoreboard players set lagblocks apisettings "},"hoverEvent":{"action":"show_text","value":"Default: 5"}},{"translate":"rcore.gui.lagblocks.desc"}]
execute unless score lagblocks apisettings matches 5 run tellraw @s ["",{"translate":"rcore.gui.pen_edited","clickEvent":{"action":"run_command","value":"/tellraw @s [\"\",{\"text\":\"Max. Tree Size : \"},{\"score\":{\"name\":\"v\",\"objective\":\"apisettings\"}}]"},"hoverEvent":{"action":"show_text","value":"Click to see set number"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set lagblocks apisettings "},"hoverEvent":{"action":"show_text","value":"Default: 5"}},{"translate":"rcore.gui.lagblocks.desc"}]

execute if score refresh apisettings matches 3 run tellraw @s ["",{"translate":"rcore.gui.pen","clickEvent":{"action":"suggest_command","value":"/scoreboard players set refresh apisettings "},"hoverEvent":{"action":"show_text","value":"Default: 3"}},{"translate":"rcore.gui.refresh.desc"}]
execute unless score refresh apisettings matches 3 run tellraw @s ["",{"translate":"rcore.gui.pen_edited","clickEvent":{"action":"run_command","value":"/tellraw @s [\"\",{\"text\":\"Max. Tree Size : \"},{\"score\":{\"name\":\"refresh\",\"objective\":\"apisettings\"}}]"},"hoverEvent":{"action":"show_text","value":"Click to see set number"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set refresh apisettings "},"hoverEvent":{"action":"show_text","value":"Default: 3"}},{"translate":"rcore.gui.refresh.desc"}]

# reset
tellraw @s {"text":"\n"}
tellraw @s ["",{"text":"rcore.gui.reset","clickEvent":{"action":"run_command","value":"/function rcore:settings/reset"}},{"translate":"rcore.gui.reset.desc"}]

tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]