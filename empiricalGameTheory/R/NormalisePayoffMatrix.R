NormalisePayoffMatrix <-
function(payoff.matrix.raw, ns, iterations, UtilityFn) {
    t( apply(payoff.matrix.raw, 1, 
        function(entry) {
            cbind( entry[seq(1,ns)], 
                    RoundAndNormalisePayoffs(entry, ns, iterations, UtilityFn) )
        }) )
}
