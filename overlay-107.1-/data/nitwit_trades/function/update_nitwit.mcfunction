# Update of the profession level
tag @s remove NitwitTradesLevel1
tag @s remove NitwitTradesLevel2
tag @s remove NitwitTradesLevel3
tag @s remove NitwitTradesLevel4
execute if score level NitwitTrades matches 1 run tag @s add NitwitTradesLevel1
execute if score level NitwitTrades matches 2 run tag @s add NitwitTradesLevel2
execute if score level NitwitTrades matches 3 run tag @s add NitwitTradesLevel3
execute if score level NitwitTrades matches 4 run tag @s add NitwitTradesLevel4
execute if score level NitwitTrades matches 5 run tag @s add NitwitTradesLevel5

# Correction of the number of trades to add
execute if score level NitwitTrades matches 4.. run scoreboard players set trades_to_add NitwitTrades 3

# Addition of the trades
$data modify storage nitwit_trades:params / set value { type: "$(type)" }
$execute store result storage nitwit_trades:params /.count int 1 run data get storage nitwit_trades:db /.$(type)Count
function nitwit_trades:select_trade with storage nitwit_trades:params /

# Clean-up
data remove storage nitwit_trades:params /
data remove storage nitwit_trades:trade /
