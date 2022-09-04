data modify storage moxinv:items/magnet lock set value 1b

execute as @s at @s run tp @e[type=item,distance=..8] ~ ~1 ~
function moxinv:items/magnet/use

data remove storage moxinv:items/magnet lock