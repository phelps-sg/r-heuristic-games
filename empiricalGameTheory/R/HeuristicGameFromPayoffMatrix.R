HeuristicGameFromPayoffMatrix <-
function(payoff.matrix, 
                                                strategies, params = c(), dynamics = ReplicatorDynamics) {
    game <- list()
    game$payoffs.normalised <- payoff.matrix
    game$ns <- NumStrategies(game$payoffs.normalised)
    game$params = params
    game$strategies <- strategies
    game$num.agents <- sum(game$payoffs.normalised[1,1:game$ns])
    game$dynamics <- dynamics
    game$ApplyFn <- lapply
    class(game) <- 'HeuristicGame'
    game
}
