Analyse.HeuristicGame <-
function(game, initial.values, times, parallel = F) {
#
#  Compute trajectories for all initial values over the specified time values.
#
#   initial.values:     The initial conditions
#
#   times:              A vector of time values
#
#   parallel:           If True then use snowfall to compute each trajectory 
#                           in parallel
#
    game.analysed <- game
    if (parallel) {
        game$ApplyFn <- sfLapply
    } else {
        game$ApplyFn <- lapply
    }
    game.analysed$trajectories <- ComputeTrajectories(game, initial.values, times)
    names(game.analysed$trajectories) <- game$strategies
    game.analysed    
}
