DiscreteTimeReplicatorDynamics <-
function(t, x, game) {
# Compute the derivatives of the replicator dynamics equation in discrete time
#
#        t:                The time value
#        x:                The current population state (a mixed strategy)
#        game:            A heuristic game of class DiscreteTimeHeuristicGame
#
#        value:            A list of the derivatives for each pure strategy
#

    # Calculate the payoffs to each pure strategy against the population
    payoffs.individual <- IndividualPayoff(game, x)
    
    # Calculate the population average payoff (population plays itself)
    payoffs.popav <- PopulationPayoff(game, x)
    
    if (is.null(alpha <- game$birth.rate)) {
        alpha <- 1.0
    }
    
    list(((alpha + payoffs.individual) / (alpha + payoffs.popav)) * x)
}
