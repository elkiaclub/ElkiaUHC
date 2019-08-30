tag @a remove Spawned
tp @a 0 255 0
gamemode survival @a
fill 7 255 7 -7 249 -7 barrier hollow
fill -6 255 -6 6 255 6 air
setblock 0 248 0 minecraft:glowstone
setworldspawn 0 250 0
gamerule spawnRadius 1
gamerule naturalRegeneration false
difficulty hard
gamerule doDaylightCycle false
time set 6500
gamerule commandBlockOutput false
gamerule logAdminCommands false
scoreboard objectives add Deaths deathCount
worldborder center 0 0
worldborder set 1520
scoreboard objectives add Health health
scoreboard objectives setdisplay list Health
scoreboard objectives add Counter dummy
scoreboard players set Counter Counter 0
scoreboard players set ShrinkTime Counter 24000
scoreboard players set PVPTime Counter 24000
scoreboard players set Start Counter 0
scoreboard players set Teams Counter 0
scoreboard players set Countdown Counter 5
tellraw @a ["",{"text":"Elkia UHC Datapack Loaded","color":"dark_aqua"}]