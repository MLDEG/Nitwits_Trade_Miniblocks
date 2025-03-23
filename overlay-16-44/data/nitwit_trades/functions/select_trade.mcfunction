# Select the trade amongst a number of trades depending on the nitwit's biome
$execute store result score trade NitwitTrades run random value 0..$(count)

# Search for existing trade
scoreboard players set existing NitwitTrades 0
data modify storage nitwit_trades:current / set from entity @s Offers.Recipes
execute if data storage nitwit_trades:current /[0] run function nitwit_trades:search_trade
data remove storage nitwit_trades:current /
scoreboard players operation trades_to_add NitwitTrades += existing NitwitTrades

# Trade creation if nonexistent
execute store result storage nitwit_trades:params /.trade int 1 run scoreboard players get trade NitwitTrades
execute if score existing NitwitTrades matches 0 run function nitwit_trades:add_trade with storage nitwit_trades:params /

# Repetition until all trades are added
scoreboard players operation trades_to_add NitwitTrades += -1 NitwitTrades
execute if score trades_to_add NitwitTrades matches 1.. run function nitwit_trades:select_trade with storage nitwit_trades:params /
