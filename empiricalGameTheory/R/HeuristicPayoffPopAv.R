HeuristicPayoffPopAv <-
function(payoff.matrix, x, num.strategies) {
# Calculate the expected payoff that the mixed strategy obtains against itself
#
#    payoff.matrix:    The heuristic payoff matrix
#     x:                A mixed strategy
#    num.strategies:    The total number of pure strategies in the game
#
    x %*% vapply(
            seq(1, num.strategies), 
            function(s) { HeuristicPayoff(payoff.matrix, s, x) }, 
            0)
}
