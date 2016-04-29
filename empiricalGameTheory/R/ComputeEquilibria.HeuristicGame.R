ComputeEquilibria.HeuristicGame <-
function(game) {
    game$equilibria <- GetEquilibria(game)
    game
}
