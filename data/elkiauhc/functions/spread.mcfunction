gamerule doDaylightCycle true
weather clear
gamemode survival @a
time set 100
effect give @a minecraft:saturation 2 3 true
title @a title ["",{"text":"Good Luck!","color":"gold","bold":true,"italic":true}]
clear @a
execute if score Teams Counter matches 1 run spreadplayers 0 0 224 744 true @a
execute if score Teams Counter matches 0 run spreadplayers 0 0 224 744 false @a
scoreboard players set Start Counter 1