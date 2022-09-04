scoreboard players add $iteration4 moxinv.items.bundle 1

execute if score $iteration4 moxinv.items.bundle >= $selected moxinv.items.bundle run data modify storage moxinv:items/bundle slot set from storage moxinv:items/bundle bundle[0]
data remove storage moxinv:items/bundle bundle[0]

execute unless score $iteration4 moxinv.items.bundle >= $selected moxinv.items.bundle run function moxinv:items/bundle/select/iterate/bundle