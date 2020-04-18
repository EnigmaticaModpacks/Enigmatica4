events.listen('server.datapack.tags.blocks', function (event) {
    event.get('forge:ores').add(oreDimensional).add(oreUraninite).add(oreBiotite);
    event.get('forge:ores/dimensional').add(oreDimensional);
})