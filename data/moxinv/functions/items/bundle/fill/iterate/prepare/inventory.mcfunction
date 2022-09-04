data modify storage moxinv:items/bundle input set from storage moxinv:items/bundle inventory[0]
execute store result score $slot moxinv.items.bundle run data get storage moxinv:items/bundle input.Slot
data remove storage moxinv:items/bundle input.Slot