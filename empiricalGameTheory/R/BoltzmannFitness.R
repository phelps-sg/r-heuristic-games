BoltzmannFitness <-
function(payoffs, temperature) {
  d<- BoltzmannFn(sum(-payoffs), temperature)
  BoltzmannFn(-payoffs, temperature) / d
}
