summon minecraft:experience_orb ~ ~ ~ {Value:1237,Motion:[0.112d,0.092d,-0.0120d]}
scoreboard players operation @s no_free_deaths.drop_xp.xp_orb_values -= .1237 no_free_deaths.drop_xp.const
execute if score @s no_free_deaths.drop_xp.xp_orb_values matches 1237.. run function no_free_deaths:mechanic/drop_xp/internal/summon_orb/1237/b
