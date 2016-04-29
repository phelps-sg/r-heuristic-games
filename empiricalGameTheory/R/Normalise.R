Normalise <-
function(v, num.agents, iterations) {
#    v * (num.agents / (iterations - 1))
    v * (num.agents / iterations)
#    v * (1 / iterations)
}
