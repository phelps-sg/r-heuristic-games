\name{LoadGamesSweep}
\alias{LoadGamesSweep}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Load games sweep.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
LoadGamesSweep()
}
%- maybe also 'usage' for other objects documented here.
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
function () 
{
    games.sweep <- list()
    strategies <- c("C", "D", "S", "T")
    experiments <- seq(1, 30)
    rounds <- floor((experiments - 1)/3) * 5 + 5
    benefit <- ((experiments - 1)\%\%3) * 0.15 + 0.05
    params <- rbind(rounds, benefit)
    lapply(experiments, function(exp) {
        HeuristicGame(sprintf("data/experiment\%d/payoffs.csv", 
            exp), strategies, params[, exp])
    })
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
