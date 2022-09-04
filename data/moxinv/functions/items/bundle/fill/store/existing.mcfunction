execute store result score $bundle_count moxinv.items.bundle run data get storage moxinv:items/bundle slot.Count
execute store result score $input_count moxinv.items.bundle run data get storage moxinv:items/bundle input.Count

# Calculate space
scoreboard players operation $space moxinv.items.bundle = $bundle_stack moxinv.items.bundle
scoreboard players operation $space moxinv.items.bundle -= $bundle_count moxinv.items.bundle

# Get remainder
scoreboard players operation $remainder moxinv.items.bundle = $input_count moxinv.items.bundle
scoreboard players operation $remainder moxinv.items.bundle -= $space moxinv.items.bundle
execute if score $remainder moxinv.items.bundle matches ..0 run scoreboard players set $remainder moxinv.items.bundle 0

# Set amount to add to be input - remainder
scoreboard players operation $add moxinv.items.bundle = $input_count moxinv.items.bundle
scoreboard players operation $add moxinv.items.bundle -= $remainder moxinv.items.bundle

scoreboard players operation $bundle_count moxinv.items.bundle += $add moxinv.items.bundle
execute store result storage moxinv:items/bundle slot.Count short 1 run scoreboard players get $bundle_count moxinv.items.bundle

data modify storage moxinv:items/bundle bundle append from storage moxinv:items/bundle slots[]
function moxinv:items/bundle/fill/remove