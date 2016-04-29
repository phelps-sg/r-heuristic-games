ComputeTrajectories.HeuristicGame <-
function(game, initial.values, 
                                                times=seq(0, 100, by=0.1)) {
    # TODO: Random stopping times for each trajectory
    game$ApplyFn(initial.values, 
        function(x) ComputeTrajectory(game, x, times))
}
