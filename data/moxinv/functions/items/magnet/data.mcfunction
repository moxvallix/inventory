data modify storage moxinv:items/magnet data set from entity @s Inventory[{Slot:-106b}].tag
execute store result score $uses moxinv.items.magnet run data get storage moxinv:items/magnet data.uses
execute store result score $max_uses moxinv.items.magnet run data get storage moxinv:items/magnet data.max_uses
execute store result score $cooldown moxinv.items.magnet run data get storage moxinv:items/magnet data.cooldown