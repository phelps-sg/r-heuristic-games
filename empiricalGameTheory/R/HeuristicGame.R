HeuristicGame <-
function(filename, strategies = c(), params = c(), 
                                        dynamics = ReplicatorDynamics, Utility = RiskNeutralUtility) {
    raw.payoff.matrix <- as.matrix(read.table(filename, sep='\t', header=F))
    ns <- NumStrategies.raw(raw.payoff.matrix)
    iterations <- params[1]
    HeuristicGameFromPayoffMatrix(
            NormalisePayoffMatrix(raw.payoff.matrix, ns, iterations, Utility),
                strategies, params, dynamics)
}
