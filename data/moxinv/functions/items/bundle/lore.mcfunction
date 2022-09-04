scoreboard players add $iteration3 moxinv.items.bundle 1

data modify storage moxinv:items/bundle slot set from storage moxinv:items/bundle bundle[0]
execute store result score $slot_count moxinv.items.bundle run data get storage moxinv:items/bundle slot.Count 1

data modify storage moxinv:items/bundle slot.Count set value 1b
data remove storage moxinv:items/bundle bundle[0]

execute at @s run summon item ~ ~ ~ {Tags:["moxinv.item.name"],Item:{id:"minecraft:dirt",Count:1b}}
data modify entity @e[type=item,tag=moxinv.item.name,limit=1] Item set from storage moxinv:items/bundle slot

execute if score $bundle_in moxinv.items.bundle matches 0 run item modify entity @s weapon.mainhand moxinv:bundle/lore_slot
execute if score $bundle_in moxinv.items.bundle matches 1 run item modify entity @s weapon.offhand moxinv:bundle/lore_slot

kill @e[type=item,tag=moxinv.item.name]
execute unless score $iteration3 moxinv.items.bundle >= $bundle_slots moxinv.items.bundle run function moxinv:items/bundle/lore