$data modify storage nitwit_trades:trade /.sell.tag.SkullOwner.Name set value "$(name)"
$data modify storage nitwit_trades:trade /.sell.tag.SkullOwner.Id set value $(id)
$data modify storage nitwit_trades:trade /.sell.tag.SkullOwner.Properties.textures[0].Value set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUv$(texture)"
$data modify storage nitwit_trades:trade /.sell.tag.BlockEntityTag.note_block_sound set value "minecraft:block.$(sound).place"
