\name{Analyse.HeuristicGame}
\alias{Analyse.HeuristicGame}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Analyse a heuristic game.
}
\description{
Analyse a heuristic game by numerically computing trajectories under its specified dynamics.
}
\usage{
Analyse.HeuristicGame(game, initial.values, times, parallel = F)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{game}{
%%     The game to analyse
}
  \item{initial.values}{
%%     A list of initial values, each of which is a vector.
}
  \item{times}{
%%     A vector of time values over which to integrate the dynamics.
}
  \item{parallel}{
%%     If true then compute trajectories in parallel.
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
Steve Phelps
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
function (game, initial.values, times, parallel = F) 
{
    game.analysed <- game
    if (parallel) {
        game$ApplyFn <- sfLapply
    }
    else {
        game$ApplyFn <- lapply
    }
    game.analysed$trajectories <- ComputeTrajectories(game, initial.values, 
        times)
    names(game.analysed$trajectories) <- game$strategies
    game.analysed
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
