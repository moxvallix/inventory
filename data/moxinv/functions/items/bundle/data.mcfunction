execute as @s[predicate=moxinv:bundle/mainhand/holding] run scoreboard players set $bundle_in moxinv.items.bundle 0
execute as @s[predicate=moxinv:bundle/offhand/holding] run scoreboard players set $bundle_in moxinv.items.bundle 1

execute if score $bundle_in moxinv.items.bundle matches 0 run data modify storage moxinv:items/bundle data set from entity @s SelectedItem.tag
execute if score $bundle_in moxinv.items.bundle matches 1 run data modify storage moxinv:items/bundle data set from entity @s Inventory[{Slot:-106b}].tag

data modify storage moxinv:items/bundle bundle set from storage moxinv:items/bundle data.slots
data modify storage moxinv:items/bundle inventory set from entity @s Inventory

execute store result score $count moxinv.items.bundle run data get storage moxinv:items/bundle inventory
execute store result score $bundle_slots moxinv.items.bundle run data get storage moxinv:items/bundle bundle
execute store result score $bundle_size moxinv.items.bundle run data get storage moxinv:items/bundle data.size
execute store result score $bundle_stack moxinv.items.bundle run data get storage moxinv:items/bundle data.stack
execute store result score $withdraw moxinv.items.bundle run data get storage moxinv:items/bundle data.withdraw

function moxinv:items/bundle/defaults

scoreboard players operation @s moxinv.items.bundle.slot = @s moxinv.player.slot