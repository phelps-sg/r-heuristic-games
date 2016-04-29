HeuristicPermutations <-
function(num.agents) {
    total.players <- sum(num.agents)
    factorial(total.players) / prod(factorial(num.agents))
}
