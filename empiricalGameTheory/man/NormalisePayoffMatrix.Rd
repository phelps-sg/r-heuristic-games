\name{NormalisePayoffMatrix}
\alias{NormalisePayoffMatrix}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Normalise payoffs and round according to standard error.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
NormalisePayoffMatrix(payoff.matrix.raw, ns, iterations, UtilityFn)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{payoff.matrix.raw}{
%%     ~~Describe \code{payoff.matrix.raw} here~~
}
  \item{ns}{
%%     ~~Describe \code{ns} here~~
}
  \item{iterations}{
%%     ~~Describe \code{iterations} here~~
}
  \item{UtilityFn}{
%%     ~~Describe \code{UtilityFn} here~~
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
function (payoff.matrix.raw, ns, iterations, UtilityFn) 
{
    t(apply(payoff.matrix.raw, 1, function(entry) {
        cbind(entry[seq(1, ns)], RoundAndNormalisePayoffs(entry, 
            ns, iterations, UtilityFn))
    }))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
