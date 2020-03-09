events.listen('server.datapack.tags.items', function (event) {
    event.get('forge:stones/basalt').add(stoneBasalt);   
    event.get('forge:cobbestones/basalt').add(cobblestoneBasalt); 
})


