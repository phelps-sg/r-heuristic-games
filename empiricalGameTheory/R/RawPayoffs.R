RawPayoffs <-
function(entry, ns) {
# Extract a vector of payoffs from a given row of a heuristic payoff matrix
#
#    entry:     the row of the payoff matrix
#    ns:     the total number of strategies in the game
#
#    
    entry[ns+1 + 3 * seq(0, ns-1)]
}
