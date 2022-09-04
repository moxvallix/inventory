tellraw @a "Moxvallix's Inventory - Load"
schedule clear moxinv:loop
function moxinv:objectives
execute unless score $init moxinv.config matches 0.. run function moxinv:init
function moxinv:loop