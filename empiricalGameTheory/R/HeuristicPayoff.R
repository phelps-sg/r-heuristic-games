HeuristicPayoff <-
function(payoff.matrix, s, x) {
# Calculate the expected payoff to the pure strategy s
#  when playing against a mixed strategy x
#
#        s:                 The index of the pure strategy
#        x:                The mixed strategy
#        payoff.matrix:    The heuristic payoff matrix
#
    sum( vapply(
            seq(1, nrow(payoff.matrix)),
            function(i) {
                HeuristicPayoffEntry(payoff.matrix[i,,drop=F], s, x)
            }, 0) )
}
