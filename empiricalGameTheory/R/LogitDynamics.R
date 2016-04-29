LogitDynamics <-
function(t, x, game) {
# Compute the derivatives of the logit dynamics equation
#
#        t:                The time value
#        x:                The current population state (a mixed strategy)
#        game:            A heuristic game of class HeuristicGame
#
#        value:            A list of the derivatives for each pure strategy
#

    propensities <- exp(game$intensity * IndividualPayoff(game, x))

    list(propensities / sum(propensities) - x)
}
