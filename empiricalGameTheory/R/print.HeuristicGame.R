print.HeuristicGame <-
function(game) {
    cat(paste('Number of strategies = ', game$ns, '\n'))
    cat(paste('Number of agents = ', game$num.agents, '\n'))
    cat('Strategies = ')
    cat(paste(game$strategies))
    cat("\n")
    cat(sprintf("Parameters = %s\n", game$params))
    if (!is.null(game$efficiency)) {
        cat(paste('Efficiency = ', mean(game$efficiency), '\n'))
    }
}
