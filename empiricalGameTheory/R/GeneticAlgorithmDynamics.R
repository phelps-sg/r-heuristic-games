GeneticAlgorithmDynamics <-
function(t, x, game) {
  fitnesses <- BoltzmannFitness(IndividualPayoff(game, x), game$temperature)
  counts <- sample(x = 1:game$ns, game$num.agents, replace = T, prob = fitnesses / sum(fitnesses))
  list(sapply(1:game$ns, function(s) length(counts[counts == s])) / game$num.agents)
}
