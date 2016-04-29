SimplexProjection <-
function(x) {
    cbind( -x[,2]/2 + 1 - x[,1] - 0.5, x[,2]*sqrt(3)/2 )
}
