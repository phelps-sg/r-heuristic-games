NumStrategies.raw <-
function(raw.payoffs) { 
# Calculate the number of strategies implicit in the specified
#  raw heuristic payoff matrix. 
#
#        payoffs:  A raw heuristic payoff matrix, or a row thereof.
#
    ncol(raw.payoffs) / 4
}
