execute if predicate moxinv:bundle/holding run function moxinv:items/bundle
execute unless data storage moxinv:items/roller lock run function moxinv:items/roller
execute unless data storage moxinv:items/magnet lock run function moxinv:items/magnet

item modify entity @s[predicate=moxinv:bundle/mainhand/right_click] weapon.mainhand moxinv:bundle/right_click
item modify entity @s[predicate=moxinv:bundle/offhand/right_click] weapon.offhand moxinv:bundle/right_click

scoreboard players reset @s[scores={moxinv.items.bundle.used=1..}] moxinv.items.bundle.used

execute if score @s moxinv.player.xp > @s moxinv.xp run function moxinv:items/mend