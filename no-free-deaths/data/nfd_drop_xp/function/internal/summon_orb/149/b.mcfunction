summon minecraft:experience_orb ~ ~ ~ {Value:149,Motion:[-0.051d,0.173d,0.081d]}
scoreboard players operation @s nfd_drop_xp.xp_orb_values -= .149 nfd_drop_xp.const
execute if score @s nfd_drop_xp.xp_orb_values matches 149.. run function nfd_drop_xp:internal/summon_orb/149/a
