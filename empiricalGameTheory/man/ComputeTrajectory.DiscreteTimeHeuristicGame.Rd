\name{ComputeTrajectory.DiscreteTimeHeuristicGame}
\alias{ComputeTrajectory.DiscreteTimeHeuristicGame}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Compute trajectories of heuristic game with discrete-time dynamics.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
ComputeTrajectory.DiscreteTimeHeuristicGame(game, x0, times)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{game}{
%%     ~~Describe \code{game} here~~
}
  \item{x0}{
%%     ~~Describe \code{x0} here~~
}
  \item{times}{
%%     ~~Describe \code{times} here~~
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
function (game, x0, times) 
{
    results <- ode(y = x0, times, func = game$dynamics, parms = game, 
        method = "iteration")
    results[, seq(2, 1 + game$ns)]
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
