events.listen('item.registry', function (event) {
  event.createBlockItem('test_block').add();
  event.createBlockItem('bauxite_dirt_ore').add();
})