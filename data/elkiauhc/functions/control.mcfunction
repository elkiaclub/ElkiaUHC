execute as @a[tag=] run tp @s 0 251 0
execute as @a[tag=] run tag @s add Spawned
execute if score Start Counter matches 1 run scoreboard players add Counter Counter 1
execute if score Counter Counter matches 0 positioned 0 250 0 run effect give @a[distance=..10] minecraft:regeneration 3 5 true
execute as @a[gamemode=survival,scores={Deaths=1..}] run gamemode spectator @s
execute as @a[gamemode=survival,scores={Deaths=1..}] run tellraw @s ["",{"text":"Use your number keys to teleport to people...","color":"gray","italic":true}]
execute as @a[gamemode=survival,scores={Deaths=1..}] run tellraw @s ["",{"text":"Remember! No cheating!","color":"gray","italic":true}]
execute as @a[gamemode=spectator,scores={Deaths=1..}] run scoreboard players set @s Deaths 0
execute if score PVPTime Counter = ShrinkTime Counter run execute if score Counter Counter = ShrinkTime Counter run function elkiauhc:shrink_and_pvp
execute if score PVPTime Counter < ShrinkTime Counter run execute if score Counter Counter = PVPTime Counter run function elkiauhc:announce_pvp
execute if score PVPTime Counter < ShrinkTime Counter run execute if score Counter Counter = ShrinkTime Counter run function elkiauhc:announce_shrinking
execute if score ShrinkTime Counter < PVPTime Counter run execute if score Counter Counter = ShrinkTime Counter run function elkiauhc:announce_shrinking
execute if score ShrinkTime Counter < PVPTime Counter run execute if score Counter Counter = PVPTime Counter run function elkiauhc:announce_pvp