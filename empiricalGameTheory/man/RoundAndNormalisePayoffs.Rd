\name{RoundAndNormalisePayoffs}
\alias{RoundAndNormalisePayoffs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Round and normalise payoffs.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
RoundAndNormalisePayoffs(entry, ns, iterations, UtilityFn = RiskNeutralUtility, max.payoff = 100, significant.digits = 6)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{entry}{
%%     ~~Describe \code{entry} here~~
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
  \item{max.payoff}{
%%     ~~Describe \code{max.payoff} here~~
}
  \item{significant.digits}{
%%     ~~Describe \code{significant.digits} here~~
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
function (entry, ns, iterations, UtilityFn = RiskNeutralUtility, 
    max.payoff = 100, significant.digits = 6) 
{
    num.agents <- sum(entry[seq(1, ns)])
    payoffs <- Normalise(RawPayoffs(entry, ns), num.agents, iterations)
    stderrs.normalised <- Normalise(Stderrs(entry, ns), num.agents, 
        iterations)
    digits <- floor(-log10(stderrs.normalised))
    utility <- UtilityFn(payoffs, stderrs.normalised)
    payoffs <- round(utility, significant.digits)
    payoffs[!is.na(payoffs) & payoffs > max.payoff] <- max.payoff
    payoffs[!is.na(payoffs) & payoffs < -max.payoff] <- -max.payoff
    payoffs
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
