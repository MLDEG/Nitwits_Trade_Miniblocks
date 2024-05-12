# Trade init
data merge storage nitwit_trades:trade { "/": { maxUses: 8, buy: { id: "minecraft:emerald", Count: 16b }, buyB: { id: "minecraft:air", Count: 1b }, sell: { id: "minecraft:player_head", Count: 1b, tag: { SkullOwner: { Properties: { textures: [{ Value: "" }] } } } }, xp: 2, uses: 0, priceMultiplier: 0, specialPrice: 0, rewardExp: 1b } }

# Completing the selected trade
$function nitwit_trades:complete_trade with storage nitwit_trades:db /.$(type)[$(trade)]

# Addition of the demand
scoreboard players operation trade NitwitTrades += base_demand NitwitTrades
execute store result storage nitwit_trades:trade /.demand int 1 run scoreboard players get trade NitwitTrades

# Correction of the villager profession XP
execute as @s[tag=NitwitTradesLevel2] run data modify storage nitwit_trades:trade /.xp set value 8
execute as @s[tag=NitwitTradesLevel3] run data modify storage nitwit_trades:trade /.xp set value 10
execute as @s[tag=NitwitTradesLevel4] run data modify storage nitwit_trades:trade /.xp set value 13

# Trade assignment
data modify entity @s Offers.Recipes append from storage nitwit_trades:trade /

# Nodding
execute at @s run tp @s ~ ~ ~ ~ ~45
