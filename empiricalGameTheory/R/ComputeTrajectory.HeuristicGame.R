ComputeTrajectory.HeuristicGame <-
function(game, x0, times) {
    results <- ode(y = x0, times,
            func=game$dynamics, parms=game)
    results[,seq(2, 1 + game$ns)]
}
