# Normally I wouldn't use a scoreboard without a namespace, but since `afk` is the namespace
# and it's very unlikely someone would have a separate `afk` scoreboard if they're using this
# data pack, it's fine to create this table. `/trigger afk` is worth it.
scoreboard objectives add afk trigger

# Public API
scoreboard objectives add afk.ticks dummy
scoreboard objectives add afk.settings dummy
scoreboard objectives add afk.left_game minecraft.custom:minecraft.leave_game

# Private API
scoreboard objectives add afk.rotation dummy
scoreboard objectives add afk.rotation_prev dummy

# .threshold is a user-configurable setting that controls how many seconds of inactivity
# it takes for a player to become AFK. 6000 ticks is 300 seconds - this is to match What_Are_They_Up_To.mod idle timer
execute unless score .threshold afk.settings matches 1.. run scoreboard players set .threshold afk.settings 6000

function afk:loop
