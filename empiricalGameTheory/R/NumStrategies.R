NumStrategies <-
function(payoffs) {
# Calculate the number of strategies implicit in the specified
#  _rounded_ payoff matrix, or entry.
#
#        payoffs:  A heuristic payoff matrix with rounded payoffs,
#                        or a row thereof
#
    ncol(payoffs) / 2
}
