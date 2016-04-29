GetEquilibria.HeuristicGame <-
function(game.analysed) {
    if (is.null(game.analysed$equilibria)) {
        equilibria <- sapply(game.analysed$trajectories, function(x) tail(x, n=1))
        t(equilibria)
    } else {
        game.analysed$equilibria
    }
}
