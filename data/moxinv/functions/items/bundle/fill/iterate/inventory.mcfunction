scoreboard players add $iteration moxinv.items.bundle 1

function moxinv:items/bundle/fill/iterate/prepare/inventory

function moxinv:items/bundle/fill/filter
execute if data storage moxinv:items/bundle valid run function moxinv:items/bundle/fill/iterate/prepare/bundle

function moxinv:items/bundle/fill/iterate/wrapup/inventory

execute unless score $iteration moxinv.items.bundle >= $count moxinv.items.bundle run function moxinv:items/bundle/fill/iterate/inventory