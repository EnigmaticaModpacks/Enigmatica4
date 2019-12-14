events.listen('server.datapack.tags', function (event) {
    event.tags.items.get('forge:stones/basalt').add('quark:basalt', 'bluepower:basalt', 'bluepower:basalt_brick');
})