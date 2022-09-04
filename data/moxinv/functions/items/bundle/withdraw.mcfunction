data modify storage moxinv:items/bundle lock set value 1b

function moxinv:items/bundle/data
execute as @s if score $bundle_slots moxinv.items.bundle matches 1.. run function moxinv:items/bundle/withdraw/engage

data remove storage moxinv:items/bundle lock