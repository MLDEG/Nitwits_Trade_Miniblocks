# The villager is processed
tag @s add NitwitTrades

# The villager is a baby (babies don't become nitwit naturally in Java Edition so 10% of them are made nitwits as in Bderock Edition)
scoreboard objectives add NitwitTrades dummy
scoreboard players set 10 NitwitTrades 10
execute store result score Age NitwitTrades run data get entity @s Age
execute store result score @s NitwitTrades run data get entity @s UUID[0]
scoreboard players operation @s NitwitTrades %= 10 NitwitTrades
execute if score Age NitwitTrades matches ..-1 if score @s NitwitTrades matches 0 run data modify entity @s VillagerData.profession set value "minecraft:nitwit"
scoreboard objectives remove NitwitTrades

# The villager is a nitwit
tag @s[nbt={ VillagerData: { profession: "minecraft:nitwit" } }] add NitwitTradesNitwit
data merge entity @s[tag=NitwitTradesNitwit] { Offers: { Recipes: [] } }
execute as @s[tag=NitwitTradesNitwit] run function nitwit_trades:update_nitwit with entity @s VillagerData
