# Processing of all unknown villagers
execute as @e[type=minecraft:villager, tag=!NitwitTrades] run function nitwit_trades:new_villager

# Processing of nitwits
execute as @e[tag=NitwitTradesNitwit, tag=!NitwitTradesLevel5] run function nitwit_trades:update_nitwits

# Schedule next execution
schedule function nitwit_trades:tick 10
