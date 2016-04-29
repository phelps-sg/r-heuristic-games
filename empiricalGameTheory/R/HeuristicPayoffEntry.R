HeuristicPayoffEntry <-
function(entry, s, x) {
    ns <- NumStrategies(entry)
    num.agents <- entry[1:ns]
    payoffs <- entry[seq(ns+1,ns*2)]
    if (num.agents[s] > 0) {
        num.agents[s] <- num.agents[s] - 1
        probability <- prod(x ^ num.agents) * HeuristicPermutations(num.agents)
        probability * payoffs[s]
    } else {
        0
    }
}
