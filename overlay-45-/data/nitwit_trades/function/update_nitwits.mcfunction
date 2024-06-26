# Scoreboard init
scoreboard objectives add NitwitTrades dummy
scoreboard players set -1 NitwitTrades -1
scoreboard players set trades_to_add NitwitTrades 2
scoreboard players set base_demand NitwitTrades -999999999

# Update nitwits that leveled up
execute store result score level NitwitTrades run data get entity @s VillagerData.level 1
execute as @s[tag=!NitwitTradesLevel1] if score level NitwitTrades matches 1 run function nitwit_trades:update_nitwit with entity @s VillagerData
execute as @s[tag=NitwitTradesLevel1] if score level NitwitTrades matches 2 run function nitwit_trades:update_nitwit with entity @s VillagerData
execute as @s[tag=NitwitTradesLevel2] if score level NitwitTrades matches 3 run function nitwit_trades:update_nitwit with entity @s VillagerData
execute as @s[tag=NitwitTradesLevel3] if score level NitwitTrades matches 4 run function nitwit_trades:update_nitwit with entity @s VillagerData
execute as @s[tag=NitwitTradesLevel4] if score level NitwitTrades matches 5 run function nitwit_trades:update_nitwit with entity @s VillagerData

# Clean-up
scoreboard objectives remove NitwitTrades
