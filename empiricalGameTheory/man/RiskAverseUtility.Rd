\name{RiskAverseUtility}
\alias{RiskAverseUtility}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Mean variance risk-averse utility function.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
RiskAverseUtility(payoff.mean, payoff.variance, coefficient = 2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{payoff.mean}{
%%     ~~Describe \code{payoff.mean} here~~
}
  \item{payoff.variance}{
%%     ~~Describe \code{payoff.variance} here~~
}
  \item{coefficient}{
%%     ~~Describe \code{coefficient} here~~
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
function (payoff.mean, payoff.variance, coefficient = 2) 
{
    payoff.mean - coefficient * payoff.variance
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
