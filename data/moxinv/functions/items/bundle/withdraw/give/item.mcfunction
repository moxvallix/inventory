execute at @s run summon item ~ ~ ~ {Tags:["moxinv.item.give"],Item:{id:"minecraft:dirt",Count:1b}}
execute at @s run data modify entity @e[type=item,tag=moxinv.item.give,limit=1,sort=nearest] Item set from storage moxinv:items/bundle output
tp @e[type=item,tag=moxinv.item.give,limit=1,sort=nearest] @s