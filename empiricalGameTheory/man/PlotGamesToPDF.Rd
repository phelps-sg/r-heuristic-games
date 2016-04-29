\name{PlotGamesToPDF}
\alias{PlotGamesToPDF}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Produce PDFs of the phase-space plots for each game.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
PlotGamesToPDF(games, basedir = "data/fig", use.names = F)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{games}{
%%     ~~Describe \code{games} here~~
}
  \item{basedir}{
%%     ~~Describe \code{basedir} here~~
}
  \item{use.names}{
%%     ~~Describe \code{use.names} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (games, basedir = "data/fig", use.names = F) 
{
    for (game.name in names(games)) {
        game <- games[[game.name]]
        filename <- sprintf("\%s/rdplot-\%s-\%s.pdf", basedir, paste(game$strategies, 
            collapse = ""), if (use.names) 
            game.name
        else game$params[1])
        pdf(filename)
        plot(game)
        dev.off()
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
