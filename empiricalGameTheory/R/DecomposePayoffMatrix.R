DecomposePayoffMatrix <-
function(payoff.matrix, ns) {
    list(
            strategies = payoff.matrix[,seq(1, ns)],
            payoffs = payoff.matrix[,seq(ns+1, ns*2)]
            )
}
