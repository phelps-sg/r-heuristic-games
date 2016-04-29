ReplicatorDynamics <-
function(t, x, game) {
# Compute the derivatives of the replicator dynamics equation
#
#        t:                The time value
#        x:                The current population state (a mixed strategy)
#        game:            A heuristic game of class HeuristicGame
#
#        value:            A list of the derivatives for each pure strategy
#

    # Calculate the total number of strategies implicit in the payoff matrix
    #num.strategies <- NumStrategies(payoff.matrix)
    
    # Calculate the payoffs to each pure strategy against the population
    payoffs.individual <- IndividualPayoff(game, x)
    
    # Calculate the population average payoff (population plays itself)
    payoffs.popav <- PopulationPayoff(game, x)
    
    # Growth rate for each allele is current frequency times the 
    #  above-average payoff
    list(x * (payoffs.individual - payoffs.popav))
}
