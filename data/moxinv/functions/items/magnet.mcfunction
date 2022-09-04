execute as @s[predicate=moxinv:magnet/offhand,scores={moxinv.player.sneak=1..,moxinv.items.magnet.cooldown=..0}] run function moxinv:items/magnet/check
execute as @s[predicate=moxinv:magnet/offhand,scores={moxinv.player.sneak=1..,moxinv.items.magnet.cooldown=0..}] run function moxinv:items/magnet/notify

execute as @s[scores={moxinv.items.magnet.cooldown=1..}] run scoreboard players remove @s moxinv.items.magnet.cooldown 1

execute unless score @s moxinv.items.magnet.cooldown matches -1.. run scoreboard players set @s moxinv.items.magnet.cooldown 0