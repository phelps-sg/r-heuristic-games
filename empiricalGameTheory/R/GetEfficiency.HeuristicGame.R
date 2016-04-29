GetEfficiency.HeuristicGame <-
function(game) {
    if (!is.null(game$efficiency) ) {
        # Allow caching of the efficiency value
        game$efficiency
    } else {
        apply(GetEquilibria(game), 1, 
                        function(x) 
                            HeuristicPayoffPopAv(game$payoffs.normalised, 
                                    x, game$ns))
    }
}
