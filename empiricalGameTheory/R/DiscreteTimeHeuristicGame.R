DiscreteTimeHeuristicGame <-
function(game) {
    class(game) <- c('DiscreteTimeHeuristicGame', 'HeuristicGame')
    game$dynamics <- DiscreteTimeReplicatorDynamics
    game
}
