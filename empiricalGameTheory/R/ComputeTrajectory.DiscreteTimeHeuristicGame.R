ComputeTrajectory.DiscreteTimeHeuristicGame <-
function(game, x0, times) {
    results <- ode(y = x0, times,
            func=game$dynamics, parms=game, method='iteration')
    results[,seq(2, 1 + game$ns)]
}
