Stdevs <-
function(entry, ns) {
# Extract the standard deviations of each payoff 
#
#    entry:     the row of the payoff matrix
#    ns:     the total number of strategies in the game
#
#
    entry[ns+2 + 3 * seq(0, ns-1)]
}
