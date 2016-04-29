\name{HeuristicGame}
\alias{HeuristicGame}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Construct a heuristic game from a heuristic payoff matrix stored as a CSV file.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
HeuristicGame(filename, strategies = c(), params = c(), dynamics = ReplicatorDynamics, Utility = RiskNeutralUtility)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{filename}{
%%     ~~Describe \code{filename} here~~
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
  \item{Utility}{
%%     ~~Describe \code{Utility} here~~
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
function (filename, strategies = c(), params = c(), dynamics = ReplicatorDynamics, 
    Utility = RiskNeutralUtility) 
{
    raw.payoff.matrix <- as.matrix(read.table(filename, sep = "\t", 
        header = F))
    ns <- NumStrategies.raw(raw.payoff.matrix)
    iterations <- params[1]
    HeuristicGameFromPayoffMatrix(NormalisePayoffMatrix(raw.payoff.matrix, 
        ns, iterations, Utility), strategies, params, dynamics)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
