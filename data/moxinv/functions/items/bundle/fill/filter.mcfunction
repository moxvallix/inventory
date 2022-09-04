data modify storage moxinv:items/bundle valid set value 1b

execute at @s run summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["moxinv.items.check"]}
data modify entity @e[type=armor_stand,tag=moxinv.items.check,limit=1] HandItems[0] set from storage moxinv:items/bundle input
execute as @e[type=armor_stand,predicate=moxinv:bundle/filter,tag=moxinv.items.check,limit=1] run data remove storage moxinv:items/bundle valid
kill @e[type=armor_stand,tag=moxinv.items.check]

execute unless score $slot moxinv.items.bundle matches 0..35 run data remove storage moxinv:items/bundle valid