LoadGames <-
function() {
# Load the payoff data
#
    games <- list()

    games$C.S.D.100 <- 
        HeuristicGame('data/payoffs-CSD100.csv', c('C', 'S', 'D'), c(100))
    games$C.S.D.13 <- 
        HeuristicGame('data/payoffs-CSD13.csv', c('C', 'S', 'D'), c(13))
        
    games$C.Sd.D.100 <- 
        HeuristicGame('data/payoffs-CSdD100.csv', c('C', 'Sd', 'D'), c(100))
    games$C.Sd.D.13 <- 
        HeuristicGame('data/payoffs-CSdD13.csv', c('C', 'Sd', 'D'), c(13))
    
    games$T.Sd.D.100 <- 
        HeuristicGame('data/payoffs-TSdD100.csv', c('T', 'Sd', 'D'), c(100))
    games$T.Sd.D.13 <- 
        HeuristicGame('data/payoffs-TSdD13.csv', c('T', 'Sd', 'D'), c(13))
        
    games$T.S.D.100 <- 
        HeuristicGame('data/payoffs-TSD100.csv', c('T', 'S', 'D'), c(100))
    games$T.S.D.13 <- 
        HeuristicGame('data/payoffs-TSD13.csv', c('T', 'S', 'D'), c(13))
    
    games
}
