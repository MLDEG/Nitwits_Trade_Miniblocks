$execute store result score count NitwitTradesLoad run data get storage nitwit_trades:db /.$(type)
$execute store result storage nitwit_trades:db /.$(type)Count int 1 run scoreboard players remove count NitwitTradesLoad 1
data remove storage nitwit_trades:count /.types[0]
execute if data storage nitwit_trades:count /.types[0] run function nitwit_trades:count_trades with storage nitwit_trades:count /.types[0]
