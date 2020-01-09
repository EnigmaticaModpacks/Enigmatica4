events.listen('block.registry', function (event) {
  event
  .create('test_block')
  .material(block.material.earth)
  .hardness(1.0)
  .add();
})