data modify storage moxinv:items/bundle compare set from storage moxinv:items/bundle slots[0]
data modify storage moxinv:items/bundle slot set from storage moxinv:items/bundle slots[0]
data remove storage moxinv:items/bundle slots[0]

execute store result storage moxinv:items/bundle compare.Count byte 1 run data get storage moxinv:items/bundle input.Count 1
execute store success score $result moxinv.items.bundle run data modify storage moxinv:items/bundle compare set from storage moxinv:items/bundle input

execute if score $result moxinv.items.bundle matches 0 run function moxinv:items/bundle/fill/store/existing