execute as @s[predicate=moxinv:bundle/select] unless data storage moxinv:items/bundle lock run function moxinv:items/bundle/select
execute as @s[predicate=moxinv:bundle/withdraw] unless data storage moxinv:items/bundle lock run function moxinv:items/bundle/withdraw
execute as @s[predicate=moxinv:bundle/fill] unless data storage moxinv:items/bundle lock run function moxinv:items/bundle/fill