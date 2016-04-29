IndividualPayoff.ConformistGame <-
function(game, x) {
    ConformistBias(game$bias, IndividualPayoff.HeuristicGame(game, x), x)
}
