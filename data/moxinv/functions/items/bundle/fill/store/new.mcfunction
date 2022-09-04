data remove storage moxinv:items/bundle slots[0]
data modify storage moxinv:items/bundle slot set from storage moxinv:items/bundle input
# data modify storage moxinv:items/bundle bundle merge from storage moxinv:items/bundle slots

scoreboard players set $remainder moxinv.items.bundle 0
function moxinv:items/bundle/fill/remove