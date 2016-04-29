LoadGamesTSD <-
function() {
    
    games.TSD <- list()
    strategies <- c('T', 'S', 'D')
    params <- c(100)
    
    games.TSD$n3 <- HeuristicGame('data/payoffs-TSD100-n3.csv', strategies, params)
    games.TSD$n5 <- HeuristicGame('data/payoffs-TSD100-n5.csv', strategies, params)
    games.TSD$n10 <- HeuristicGame('data/payoffs-TSD100.csv', strategies, params)
    
    games.TSD
}
