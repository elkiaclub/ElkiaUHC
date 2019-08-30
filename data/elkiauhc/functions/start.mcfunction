execute if score Countdown Counter matches 5 run title @a title ["",{"text":"Get ready!","color":"gold"}]
execute if score Countdown Counter matches 4 run title @a title ["",{"text":"3","color":"gold"}]
execute if score Countdown Counter matches 3 run title @a title ["",{"text":"2","color":"gold"}]
execute if score Countdown Counter matches 2 run title @a title ["",{"text":"1","color":"gold"}]
execute if score Countdown Counter matches 1 run function elkiauhc:spread
execute if score Countdown Counter matches 1..5 run schedule function elkiauhc:start 20t
scoreboard players remove Countdown Counter 1