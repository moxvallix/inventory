function moxinv:items/_player

execute store result score @s moxinv.player.slot run data get entity @s SelectedItemSlot

scoreboard players set @s moxinv.player.sneak 0