events.listen('server.datapack.tags.blocks', function (event) {
    event.get('forge:storage_blocks').add('minecraft:glowstone');   
    event.get('forge:storage_blocks/glowstone').add('minecraft:glowstone'); 
})