execute at @e[nbt={Item:{id:"minecraft:iron_sword",components:{"minecraft:custom_data":{destroy:true}},count:1}}] run fill ~ ~ ~ ~ ~-1 ~ air
execute as @e[nbt={Item:{id:"minecraft:iron_sword",components:{"minecraft:custom_data":{destroy:true}},count:1}}] run kill @s

scoreboard players enable @a menu
scoreboard players enable @a menu.namecolor
scoreboard players enable @a menu.boris

team join white @a[scores={menu.namecolor=1}]
team join aqua @a[scores={menu.namecolor=2}]
team join black @a[scores={menu.namecolor=3}]
team join blue @a[scores={menu.namecolor=4}]
team join dark_aqua @a[scores={menu.namecolor=5}]
team join dark_blue @a[scores={menu.namecolor=6}]
team join dark_gray @a[scores={menu.namecolor=7}]
team join dark_green @a[scores={menu.namecolor=8}]
team join dark_purple @a[scores={menu.namecolor=9}]
team join dark_red @a[scores={menu.namecolor=10}]
team join gold @a[scores={menu.namecolor=11}]
team join gray @a[scores={menu.namecolor=12}]
team join green @a[scores={menu.namecolor=13}]
team join red @a[scores={menu.namecolor=14}]
team join yellow @a[scores={menu.namecolor=15}]
team join light_purple @a[scores={menu.namecolor=16}]

execute as @a[scores={menu.boris=2}] run function francium:findstronghold
dialog show @a[scores={menu.boris=1}] francium:boris
scoreboard players set @a[scores={menu.boris=1}] menu.boris 0

scoreboard players enable Newbie_modder menu.boris
scoreboard players enable Darth_squidious menu.boris