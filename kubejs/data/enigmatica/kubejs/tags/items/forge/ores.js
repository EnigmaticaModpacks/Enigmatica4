events.listen('server.datapack.tags.items', function (event) {
    event.get('forge:ores').add(oreDimensional);   
    event.get('forge:ores/dimensional').add(oreDimensional); 
})