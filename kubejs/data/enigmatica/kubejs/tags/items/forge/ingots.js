events.listen('server.datapack.tags.items', function (event) {
    event.get('forge:ingots').add('powah:uraninite');   
    event.get('forge:ingots/uranium').add('powah:uraninite'); 
})