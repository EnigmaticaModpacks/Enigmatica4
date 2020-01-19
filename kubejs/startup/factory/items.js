events.listen('item.registry', function (event) {
  for (var i = 0; i < materials.length - 1; i++) {
    event.createBlockItem('ore_dirt_' + materials[i]).add();
  }
})

/*

maxStackSize(40)
.unstackable()
.maxDamage(400)
.containerItem(utils.id('minecraft:bucket'))
.tool(TOOL_PICKAXE, 3).rarity(RARITY_RARE)
.glow(true).tooltip("Hi")
.group("building_blocks")

*/