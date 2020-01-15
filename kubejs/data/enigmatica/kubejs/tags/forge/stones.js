// TODO: This will be refactored to `server.datapack.tags.items` in a future version of KubeJS.
events.listen('server.datapack.tags', function (event) {
    event.tags.items.get('forge:stones/basalt').add(
    'quark:basalt', 
    'bluepower:basalt', 
    'bluepower:basalt_brick', 
    'quark:chiseled_basalt_bricks', 
    'quark:basalt_pavement', 
    'quark:basalt_pillar', 
    'quark:polished_basalt', 
    'quark:basalt_bricks', 
    'bluepower:basalt_cobble', 
    'bluepower:basalt_brick_small',
    'bluepower:fancy_basalt', 
    'bluepower:basalt_tile', 
    'bluepower:basalt_paver',
    'bluepower:tiles', 
    'bluepower:basaltbrick_cracked', 
    'bluepower:cracked_basalt_lava');
})

