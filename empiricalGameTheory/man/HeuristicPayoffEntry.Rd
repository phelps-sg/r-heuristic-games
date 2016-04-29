\name{HeuristicPayoffEntry}
\alias{HeuristicPayoffEntry}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate the expected payoff to a given strategy in a specified population state for 
a single entry in the payoff matrix.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
HeuristicPayoffEntry(entry, s, x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{entry}{
%%     ~~Describe \code{entry} here~~
}
  \item{s}{
%%     ~~Describe \code{s} here~~
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
function (entry, s, x) 
{
    ns <- NumStrategies(entry)
    num.agents <- entry[1:ns]
    payoffs <- entry[seq(ns + 1, ns * 2)]
    if (num.agents[s] > 0) {
        num.agents[s] <- num.agents[s] - 1
        probability <- prod(x^num.agents) * HeuristicPermutations(num.agents)
        probability * payoffs[s]
    }
    else {
        0
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
