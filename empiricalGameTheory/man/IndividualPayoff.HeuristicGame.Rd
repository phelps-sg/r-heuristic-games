\name{IndividualPayoff.HeuristicGame}
\alias{IndividualPayoff.HeuristicGame}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Method to compute the expected payoff to each pure strategy in 
population state x.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
IndividualPayoff.HeuristicGame(game, x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{game}{
%%     ~~Describe \code{game} here~~
}
  \item{x}{
%%     ~~Describe \code{x} here~~
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
function (game, x) 
{
    vapply(seq(1, game$ns), function(s) {
        HeuristicPayoff(game$payoffs.normalised, s, x)
    }, 0)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
