events.listen('server.datapack.tags.items', function (event) {
    for (var i = 0; i < colors.length; i++) {
        event.get('forge:carpet').add('minecraft:' + colors[i] + '_carpet');
    }
})