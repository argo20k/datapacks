# Current rotation is the same as the previous rotation, so if after incrementing the
# ticks the player has been inactive for, if they've been away for longer than the
# threshold and don't have the AFK tag yet, tag them.
scoreboard players add @s afk.ticks 20
execute if entity @s[tag=!afk] if score @s afk.ticks >= .ticks afk.settings at @s run function afk:tag/away
