$data modify storage nitwit_trades:trade /.sell.components.minecraft:custom_name set value { translate: "block.minecraft.player_head.named", with: [ { translate: "block.minecraft.$(name)" } ] }
$data modify storage nitwit_trades:trade /.sell.components.minecraft:profile.properties[0].value set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUv$(texture)"
$data modify storage nitwit_trades:trade /.sell.components.minecraft:note_block_sound set value "minecraft:block.$(sound).place"
