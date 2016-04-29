PopulationPayoff.ConformistGame <-
function(game, x) {
    payoffs <- vapply(
                seq(1, game$ns), 
                function(s) { HeuristicPayoff(game$payoffs.normalised, s, x) }, 
                0)
    x %*% ConformistBias(game$bias, payoffs, x)
}
