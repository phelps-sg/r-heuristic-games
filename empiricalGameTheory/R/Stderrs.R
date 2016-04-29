Stderrs <-
function(entry, ns) {
# Extract the standard error corresponding to each payoff 
#
#    entry:     the row of the payoff matrix
#    ns:     the total number of strategies in the game
#
#
    2 * (Stdevs(entry,ns) / sqrt(SampleSizes(entry, ns)))
}
