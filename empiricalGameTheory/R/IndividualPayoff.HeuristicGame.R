IndividualPayoff.HeuristicGame <-
function(game, x) {
    vapply(
            seq(1, game$ns), 
            function(s) { HeuristicPayoff(game$payoffs.normalised, s, x)}, 
            0)
}
