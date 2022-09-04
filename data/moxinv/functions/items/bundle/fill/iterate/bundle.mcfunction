scoreboard players add $iteration2 moxinv.items.bundle 1

# Compare
execute unless data storage moxinv:items/bundle slots[0] run function moxinv:items/bundle/fill/store/new
execute if data storage moxinv:items/bundle slots[0] run function moxinv:items/bundle/fill/compare

data modify storage moxinv:items/bundle bundle append from storage moxinv:items/bundle slot

execute unless score $iteration2 moxinv.items.bundle >= $bundle_size moxinv.items.bundle run function moxinv:items/bundle/fill/iterate/bundle