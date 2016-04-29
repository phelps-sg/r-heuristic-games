\name{HeuristicGameFromPayoffMatrix}
\alias{HeuristicGameFromPayoffMatrix}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Construct a heuristic game from the specified payoff matrix.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
HeuristicGameFromPayoffMatrix(payoff.matrix, strategies, params = c(), dynamics = ReplicatorDynamics)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{payoff.matrix}{
%%     ~~Describe \code{payoff.matrix} here~~
}
  \item{strategies}{
%%     ~~Describe \code{strategies} here~~
}
  \item{params}{
%%     ~~Describe \code{params} here~~
}
  \item{dynamics}{
%%     ~~Describe \code{dynamics} here~~
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
function (payoff.matrix, strategies, params = c(), dynamics = ReplicatorDynamics) 
{
    game <- list()
    game$payoffs.normalised <- payoff.matrix
    game$ns <- NumStrategies(game$payoffs.normalised)
    game$params = params
    game$strategies <- strategies
    game$num.agents <- sum(game$payoffs.normalised[1, 1:game$ns])
    game$dynamics <- dynamics
    game$ApplyFn <- lapply
    class(game) <- "HeuristicGame"
    game
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
