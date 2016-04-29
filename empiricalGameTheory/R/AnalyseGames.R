AnalyseGames <-
function(games, initial.values = initial.values.random,
                                    times = seq(0, 100, by=0.1)) {
# Compute replicator dynamics trajectories for each game
    sfLapply( games,
                    function(game) 
                        ComputeEfficiency( 
                            ComputeEquilibria( 
                                Analyse(game, initial.values, times)))
            )
}
