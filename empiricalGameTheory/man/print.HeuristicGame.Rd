\name{print.HeuristicGame}
\alias{print.HeuristicGame}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Summarise the game.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
print.HeuristicGame(game)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{game}{
%%     ~~Describe \code{game} here~~
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
function (game) 
{
    cat(paste("Number of strategies = ", game$ns, "\n"))
    cat(paste("Number of agents = ", game$num.agents, "\n"))
    cat("Strategies = ")
    cat(paste(game$strategies))
    cat("\n")
    cat(sprintf("Parameters = \%s\n", game$params))
    if (!is.null(game$efficiency)) {
        cat(paste("Efficiency = ", mean(game$efficiency), "\n"))
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
