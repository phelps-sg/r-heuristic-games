PlotTrajectory <-
function(trajectory, max.values) {
    try({
        n <- if (is.nan(max.values)) nrow(trajectory) 
                else min(max.values, nrow(trajectory))    
        trajectory.params <- SimplexProjection(trajectory[1:n,])
        xy <- trajectory.params
        lines(xy)
        last.position <- xy[n,]
        points(last.position[1], last.position[2])
    })
}
