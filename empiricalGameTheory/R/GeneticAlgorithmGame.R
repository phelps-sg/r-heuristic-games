GeneticAlgorithmGame <-
function(game, temperature) {
  class(game) <- c('GeneticAlgorithmGame', 'DiscreteTimeHeuristicGame', 'HeuristicGame')
  game$dynamics <- GeneticAlgorithmDynamics
  game$temperature <- temperature
  game
}
