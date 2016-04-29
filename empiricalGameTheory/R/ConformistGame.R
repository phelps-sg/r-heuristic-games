ConformistGame <-
function(game, bias=0.5) {
    class(game) <- c('ConformistGame', 'HeuristicGame')
    game$bias <- bias
    game
}
