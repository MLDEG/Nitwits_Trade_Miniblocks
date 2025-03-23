# Database initialization
data remove storage nitwit_trades:db /
function nitwit_trades:load_db

# Count trades and complete database
scoreboard objectives add NitwitTradesLoad dummy
data modify storage nitwit_trades:count / set from storage nitwit_trades:db /
function nitwit_trades:count_trades with storage nitwit_trades:count /.types[0]
data remove storage nitwit_trades:count /
data remove storage nitwit_trades:params params
scoreboard objectives remove NitwitTradesLoad

# Start ticking
function nitwit_trades:tick
