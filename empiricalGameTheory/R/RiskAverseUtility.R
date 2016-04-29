RiskAverseUtility <-
function(payoff.mean, payoff.variance, coefficient = 2) {
  payoff.mean - coefficient * payoff.variance
}
