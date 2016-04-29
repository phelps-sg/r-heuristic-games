ConformistBias <-
function(bias, payoffs, x) {
    (1 - bias) * payoffs + bias * x
}
