events.listen('server.datapack.tags.items', function (event) {
    event.get('forge:gems').add('rftoolsbase:dimensionalshard');   
    event.get('forge:gems/dimensional').add('rftoolsbase:dimensionalshard'); 
})


