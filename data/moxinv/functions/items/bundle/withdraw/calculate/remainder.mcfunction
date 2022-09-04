scoreboard players operation $remainder moxinv.items.bundle = $bundle_count moxinv.items.bundle
scoreboard players operation $remainder moxinv.items.bundle -= $withdraw moxinv.items.bundle
execute if score $remainder moxinv.items.bundle matches 0.. run scoreboard players set $remainder moxinv.items.bundle 0