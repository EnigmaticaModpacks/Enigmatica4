events.listen('server.datapack.tags.items', function (event) {
    event.get('forge:ores').add(oreDimensional).add(oreUraninite);
    event.get('forge:ores/dimensional').add(oreDimensional); 
})