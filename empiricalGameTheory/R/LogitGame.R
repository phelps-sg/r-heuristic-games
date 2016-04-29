LogitGame <-
function(game, intensity=0.0) {
    class(game) <- c('LogitGame', 'HeuristicGame')
    game$intensity = intensity
    game$dynamics = LogitDynamics
    game
}
