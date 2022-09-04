# Moxvallix's Inventory Datapack
## Various items meant to improve on the inventory

*Moxvallix's Inventory Datapack makes use of the wonderful [TagLib](https://www.planetminecraft.com/data-pack/taglib/) datapack, by HeDeAn.*

These items were originally implemented in [The Otherside](https://www.planetminecraft.com/data-pack/the-otherside-1-19-sculk-dimension/).
They have been moved out to this separate project, in order to make it easier to maintain them,
and to make it easier for them to be implemented into other projects.

If you would like to use any of these items in your own project, they are licensed under CC-BY-SA.

![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)  
*This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/).*

### How to use the items
#### The Bundle

Holding sneak (shift) whilst right-clicking on the bundle automatically fills it with items from your inventory.
Right-clicking the bundle without sneaking withdraws the item in the first slot of the bundle.
Holding the bundle in your offhand, and scrolling, allows you to select which item should be withdrawn.

#### The Roller

Holding sneak (shift) whilst holding the roller in your offhand, and scrolling, swaps out the rows of your inventory.

#### The Magnet

Holding sneak (shift) whilst holding the magnet in your offhand, will draw nearby items to you.


### Using the items in your own project
#### Implementing the Bundle

Bundles with the nbt tag `custom_id:"moxinv:bundle"` will work as a special bundle.
You can configure the bundle with three other tags:
- `slots` (byte) configures the amount of different items the bundle can hold. Defaults to 9.
- `stack` (short) configures the max count of an item in a slot. Defaults to 128.
- `withdraw` (byte) configures the max amount of items withdrawn at a time. Defaults to 64.

For example:
`give @s bundle{custom_id:"moxinv:bundle",stack:64s,size:6b,withdraw:16b}`
will give a bundle with 6 slots, that stack up to 64, and withdraw 16 items at a time.

### Implementing the Roller

Items with the nbt tag `custom_id:"moxinv:roller"` will work as an inventory roller.
The roller currently has no configuration.

`give @s debug_stick{custom_id:"moxinv:roller"}`

### Implementing the Magnet

Items with the nbt tag `custom_id:"moxinv:magnet"` will work as a magnet.
You configure the magnet with three other tags:
- `uses` (short) the amount of uses left the magnet has. Depletes with each use.
- `max_uses` (short) the maximum amount of uses the magnet can mend to.
- `cooldown` (short) the amount of time in ticks the player must wait between uses.

For example:
`give @s debug_stick{custom_id:"moxinv:magnet",uses:0s,max_uses:64s,cooldown:100s}`
will give a magnet with 0 uses, up to 64 stored uses, and a cooldown of 5 seconds (100 ticks).