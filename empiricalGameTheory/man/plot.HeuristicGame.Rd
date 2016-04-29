\name{plot.HeuristicGame}
\alias{plot.HeuristicGame}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot the previously-computed trajectories for the dynamics of the game.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plot.HeuristicGame(game, max.values = NaN)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{game}{
%%     ~~Describe \code{game} here~~
}
  \item{max.values}{
%%     ~~Describe \code{max.values} here~~
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
function (game, max.values = NaN) 
{
    labels = c(game$strategies[1], game$strategies[3], game$strategies[2])
    PlotEmptyTriangle(labels)
    lapply(game$trajectories, function(trajectory) {
        if (length(trajectory) > 0) {
            trajectory <- cbind(trajectory[, 1], trajectory[, 
                3], trajectory[, 2])
            PlotTrajectory(trajectory, max.values)
        }
    })
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
