events.listen('block.registry', function (event) {
  for (var i = 0; i < materials.length - 1; i++) {
    event.create('ore_dirt_' + materials[i]).material(block.material.earth).hardness(1.0).add();
  }
})

/*
material(block.material.glass)
.hardness(1.0)
.resistance(4.0)
.lightValue(1.0)
.opaque(true)
.fullBlock(true)
.unbreakable()
.harvestTool(TOOL_PICKAXE, 3)
.layer("cutout")
*/