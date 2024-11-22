function afk:update_rotation

execute if entity @s[scores={afk=1..}] run function afk:trigger

# Joining the game always counts as activity, so the ticks inactive should be reset.
# There isn't a way to detect joining directly, but you can detect leaving, and players
# with a leave_game score must have joined since the last check.
execute if score @s afk.leave_game matches 1.. run return run function afk:player_joined

execute if score @s afk.rotation = @s afk.rotation_prev run return run function afk:increment_ticks
function afk:reset_player
