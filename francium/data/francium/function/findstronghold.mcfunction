scoreboard players set @s menu.boris 0

execute store result storage minecraft:temp struct_pos.x int 1 run locate structure stronghold
execute store result storage minecraft:temp struct_pos.y int 1 run locate structure stronghold
execute store result storage minecraft:temp struct_pos.z int 1 run locate structure stronghold

execute store result score @s menu.boris.stronghold_x run data get storage minecraft:temp struct_pos.x
execute store result score @s menu.boris.stronghold_y run data get storage minecraft:temp struct_pos.y
execute store result score @s menu.boris.stronghold_z run data get storage minecraft:temp struct_pos.z

tellraw @s [{"text":"Stronghold found at: ","color":"green"},{"score":{"name":"@s","objective":"menu.boris.stronghold_x"},"color":"yellow"},{"text":", ","color":"white"},{"score":{"name":"@s","objective":"menu.boris.stronghold_y"},"color":"yellow"},{"text":", ","color":"white"},{"score":{"name":"@s","objective":"menu.boris.stronghold_z"},"color":"yellow"}]