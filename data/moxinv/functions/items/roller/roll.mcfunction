data modify storage moxinv:items/roller lock set value 1b

scoreboard players operation $next_slot moxinv.items.roller = @s moxinv.items.roller.slot
scoreboard players operation $prev_slot moxinv.items.roller = @s moxinv.items.roller.slot

scoreboard players add $next_slot moxinv.items.roller 1
scoreboard players remove $prev_slot moxinv.items.roller 1

execute if score @s moxinv.player.slot >= $next_slot moxinv.items.roller run function moxinv:items/roller/up
execute if score @s moxinv.player.slot <= $prev_slot moxinv.items.roller run function moxinv:items/roller/down

scoreboard players operation @s moxinv.items.roller.slot = @s moxinv.player.slot

data remove storage moxinv:items/roller lock