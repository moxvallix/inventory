execute at @s run summon item ~ ~ ~ {Tags:["moxinv.item.name"],Item:{id:"minecraft:dirt",Count:1b}}
data modify storage moxinv:items/bundle slot.Count set value 1b
data modify entity @e[type=item,tag=moxinv.item.name,limit=1] Item set from storage moxinv:items/bundle slot

execute if data storage moxinv:items/bundle slot.id run title @s actionbar {"selector": "@e[type=item,tag=moxinv.item.name,limit=1]","color": "gold","extra":[{"text": " x ","extra": [{"score": {"name": "$slot_count","objective": "moxinv.items.bundle"}}]}]}
execute unless data storage moxinv:items/bundle slot.id run title @s actionbar {"text":"No Items","color":"gold"}

kill @e[type=item,tag=moxinv.item.name]