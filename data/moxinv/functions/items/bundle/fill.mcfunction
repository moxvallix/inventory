data modify storage moxinv:items/bundle lock set value 1b

function moxinv:items/bundle/data
execute if score $count moxinv.items.bundle matches 1.. run function moxinv:items/bundle/fill/engage

data remove storage moxinv:items/bundle lock