# Get the ID of the first existing trade
execute store result score id NitwitTrades run data get storage nitwit_trades:current /[0].demand 1
scoreboard players operation id NitwitTrades -= base_demand NitwitTrades

# Confirm if the trade has been found
execute if score trade NitwitTrades = id NitwitTrades run scoreboard players set existing NitwitTrades 1

# Remove the first existing trade
data remove storage nitwit_trades:current /[0]

# Repetition until all trades are checked or the selected one is found
execute if data storage nitwit_trades:current /[0] unless score existing NitwitTrades matches 1 run function nitwit_trades:search_trade
