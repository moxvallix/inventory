scoreboard players add $iteration5 moxinv.items.bundle 1

function moxinv:items/bundle/withdraw/iterate/prepare/bundle

execute if score $iteration5 moxinv.items.bundle = $selected moxinv.items.bundle run function moxinv:items/bundle/withdraw/withdraw

function moxinv:items/bundle/withdraw/iterate/wrapup/bundle

execute unless score $iteration5 moxinv.items.bundle >= $selected moxinv.items.bundle run function moxinv:items/bundle/withdraw/iterate/bundle