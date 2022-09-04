data remove storage moxinv:items/bundle bundle[{Count:0s}]

execute if score $bundle_in moxinv.items.bundle matches 0 run function moxinv:items/bundle/modify/mainhand
execute if score $bundle_in moxinv.items.bundle matches 1 run function moxinv:items/bundle/modify/offhand

execute store result score $bundle_slots moxinv.items.bundle run data get storage moxinv:items/bundle bundle
execute if score $bundle_slots moxinv.items.bundle matches 1.. run function moxinv:items/bundle/lore
function moxinv:items/bundle/reset