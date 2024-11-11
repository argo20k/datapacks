# This is the entrypoint for when a player "sleeps" (uses) a bed. It will trigger immediately upon
# entering the bed, *not* when successfully sleeping.

tellraw @a[tag=afk_sleep.log.debug] ["",{"text":"afk_sleep ","color":"blue"},{"text":"DEBUG ","color":"dark_purple"},{"text":"Player entered bed"}]

advancement revoke @s only afk_sleep:enter_bed

execute store result score .gameruleValue afk_sleep.dummy run gamerule playersSleepingPercentage
execute unless score .gameruleValue afk_sleep.dummy = .playersSleepingPercentage afk_sleep.dummy run scoreboard players operation .relativePercentage afk_sleep.dummy = .gameruleValue afk_sleep.dummy

# The score was reset on load, so the first player to sleep will always set the data version.
execute unless score .dataVersion afk_sleep.dummy matches 0.. store result score .dataVersion afk_sleep.dummy run data get entity @s DataVersion

function afk_sleep:internal/while_sleeping/is_sleeping
