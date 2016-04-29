LoadGamesSweep <-
function() {
    
    games.sweep <- list()
    strategies <- c('C', 'D', 'S', 'T')
    
    # benefit [0.05, 0.20, 0.35]
    # rounds [5, 10, ..., 50]
    experiments <- seq(1,30)
    rounds <- floor((experiments - 1) / 3) * 5 + 5
    benefit <- ((experiments-1) %% 3) * 0.15 + 0.05
    params <- rbind(rounds, benefit)
    
    lapply(experiments, function(exp) { 
        HeuristicGame(sprintf('data/experiment%d/payoffs.csv', exp), 
            strategies, params[,exp])
            })
}
