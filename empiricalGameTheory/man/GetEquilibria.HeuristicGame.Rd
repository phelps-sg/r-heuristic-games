\name{GetEquilibria.HeuristicGame}
\alias{GetEquilibria.HeuristicGame}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Get the equilibria of the game.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
GetEquilibria.HeuristicGame(game.analysed)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{game.analysed}{
%%     ~~Describe \code{game.analysed} here~~
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
function (game.analysed) 
{
    if (is.null(game.analysed$equilibria)) {
        equilibria <- sapply(game.analysed$trajectories, function(x) tail(x, 
            n = 1))
        t(equilibria)
    }
    else {
        game.analysed$equilibria
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
