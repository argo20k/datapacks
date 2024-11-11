tellraw @a[tag=log.debug] ["",{"text":"afk_sleep ","color":"blue"},{"text":"DEBUG ","color":"dark_purple"},{"text":"Checking if a player is sleeping"}]
# Adding the `if entity @a` check guarantees that the divisor, the total number of players
# on the server, will never be 0
execute if entity @a[predicate=afk_sleep:is_sleeping] run function afk_sleep:internal/while_sleeping/is_sleeping
execute unless entity @a[predicate=afk_sleep:is_sleeping] run function afk_sleep:internal/while_sleeping/nobody_sleeping
