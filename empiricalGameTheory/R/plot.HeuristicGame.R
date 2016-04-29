plot.HeuristicGame <-
function(game, max.values=NaN) {
    # Re-order labels for consistency with historical plots
    labels = c( game$strategies[1], game$strategies[3], game$strategies[2])
    PlotEmptyTriangle(labels)    
    lapply(game$trajectories,
            function(trajectory) {
                if (length(trajectory) > 0) {
                    # Re-order labels for consistency with historical plots
                    trajectory <- 
                            cbind(trajectory[,1], trajectory[,3], trajectory[,2])    
                    PlotTrajectory(trajectory, max.values)
                }
            })
}
