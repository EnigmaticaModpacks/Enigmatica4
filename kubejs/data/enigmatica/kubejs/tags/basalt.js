server.logAddedRecipes = true
server.logRemovedRecipes = true

// TODO: This will be refactored to `server.datapack.tags.items` in a future version of KubeJS.
events.listen('server.datapack.tags', function (event) {
    event.tags.items.get('forge:stones/basalt').add('quark:basalt', 'bluepower:basalt', 'bluepower:basalt_brick');
})
