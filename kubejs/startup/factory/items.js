events.listen('item.registry', function (event) {
  event.createBlockItem('test_block').add()
})

/*
Create kubejs/resources/lang/en_us.lang file and add:
tile.kubejs.test_block.name=Test Block
Place block texture in kubejs/resources/textures/blocks/test_block.png
Blocks need model and state mapping files for texture to work, just like vanilla.
State mapping file: kubejs/resources/blockstates/test_block.json
{
    "variants": {
        "normal": [{"model": "kubejs:test_block"}]
    }
}
Block model file: kubejs/resources/models/block/test_block.js
{
    "parent": "block/cube_all",
    "textures": {
        "all": "kubejs:blocks/test_block"
    }
}
*/