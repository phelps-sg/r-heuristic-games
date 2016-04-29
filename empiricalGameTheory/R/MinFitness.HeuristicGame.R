MinFitness.HeuristicGame <-
function(game) {
  min(game$payoffs.normalised[!is.nan(game$payoffs.normalised)])
}
