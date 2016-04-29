RunReplicatorDynamicsAnalysis <-
function(num.cpus = 6, 
        initial.values = initial.values.random) {    
    InitialiseSnowfall(num.cpus)
    games <<- AnalyseGames(LoadGames(), initial.values.random)
    games.TSD <<- AnalyseGames(LoadGamesTSD(), initial.values.random)
    save.image()
}
