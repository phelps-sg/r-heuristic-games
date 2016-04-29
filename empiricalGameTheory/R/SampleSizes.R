SampleSizes <-
function(entry, ns) {
# Extract the sample sizes corresponding to each payoff 
#
#    entry:     the row of the payoff matrix
#    ns:     the total number of strategies in the game
#
#
    entry[ns+3 + 3 * seq(0, ns-1)]
}
