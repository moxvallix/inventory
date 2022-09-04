scoreboard players set $selected moxinv.items.bundle 1
execute as @s[predicate=moxinv:bundle/offhand/holding] run function moxinv:items/bundle/select/calculate

data modify storage moxinv:items/bundle slots set from storage moxinv:items/bundle bundle
data remove storage moxinv:items/bundle bundle