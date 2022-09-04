execute store result score $bundle_count moxinv.items.bundle run data get storage moxinv:items/bundle slot.Count

function moxinv:items/bundle/withdraw/calculate/remainder
function moxinv:items/bundle/withdraw/calculate/amount

scoreboard players operation $bundle_count moxinv.items.bundle -= $add moxinv.items.bundle
execute store result storage moxinv:items/bundle slot.Count short 1 run scoreboard players get $bundle_count moxinv.items.bundle

data modify storage moxinv:items/bundle output set from storage moxinv:items/bundle slot
execute store result storage moxinv:items/bundle output.Count byte 1 run scoreboard players get $add moxinv.items.bundle