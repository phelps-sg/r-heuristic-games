\name{HeuristicPayoffPopAv}
\alias{HeuristicPayoffPopAv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate the expected payoff that the mixed strategy obtains against itself.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
HeuristicPayoffPopAv(payoff.matrix, x, num.strategies)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{payoff.matrix}{
%%     ~~Describe \code{payoff.matrix} here~~
}
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{num.strategies}{
%%     ~~Describe \code{num.strategies} here~~
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
function (payoff.matrix, x, num.strategies) 
{
    x \%*\% vapply(seq(1, num.strategies), function(s) {
        HeuristicPayoff(payoff.matrix, s, x)
    }, 0)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
