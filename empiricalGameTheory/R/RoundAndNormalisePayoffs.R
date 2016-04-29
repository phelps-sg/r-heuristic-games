RoundAndNormalisePayoffs <-
function(entry, ns, iterations, 
                                      UtilityFn = RiskNeutralUtility, 
                                      max.payoff = 100, significant.digits = 6) {
# Calculate the rounded payoffs for a given row of the heuristic payoff matrix.
# Each payoff is rounded according to the standard error of the mean.
#
#    entry:         the row of the payoff matrix
#    ns:         the total number of strategies in the game
#    iterations:    the total number of ticks that payoffs are computed over
#
    num.agents <- sum(entry[seq(1,ns)])
    payoffs <- Normalise(RawPayoffs(entry, ns), num.agents, iterations)
    stderrs.normalised <- Normalise(Stderrs(entry, ns), num.agents, iterations)
    digits <- floor(-log10(stderrs.normalised))
    # round(payoffs, digits)
    #round(payoffs, 6)
    utility <- UtilityFn(payoffs, stderrs.normalised)
    payoffs <- round(utility, significant.digits)
    payoffs[!is.na(payoffs) & payoffs > max.payoff] <- max.payoff
    payoffs[!is.na(payoffs) & payoffs < -max.payoff] <- -max.payoff
    payoffs
}
