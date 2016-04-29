PlotGamesToPDF <-
function(games, basedir='data/fig', use.names=F) {
    for(game.name in names(games)) {
        game <- games[[game.name]]
        filename <- sprintf('%s/rdplot-%s-%s.pdf', basedir,
                                paste(game$strategies, collapse=''), 
                                if (use.names) game.name else game$params[1])
        pdf(filename)
        plot(game)
        dev.off()
    }
}
