summon minecraft:experience_orb ~ ~ ~ {Value:73,Motion:[0.0407d,0.1049d,0.0605d]}
scoreboard players operation @s no_free_deaths.drop_xp.xp_orb_values -= .73 no_free_deaths.drop_xp.const
execute if score @s no_free_deaths.drop_xp.xp_orb_values matches 73.. run function nfd_drop_xp:internal/summon_orb/73/b
