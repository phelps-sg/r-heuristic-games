\name{GeneticAlgorithmDynamics}
\alias{GeneticAlgorithmDynamics}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Difference equation for dynamics approximating a genetic algorithm.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
GeneticAlgorithmDynamics(t, x, game)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{t}{
%%     ~~Describe \code{t} here~~
}
  \item{x}{
%%     ~~Describe \code{x} here~~
}
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
function (t, x, game) 
{
    fitnesses <- BoltzmannFitness(IndividualPayoff(game, x), 
        game$temperature)
    counts <- sample(x = 1:game$ns, game$num.agents, replace = T, 
        prob = fitnesses/sum(fitnesses))
    list(sapply(1:game$ns, function(s) length(counts[counts == 
        s]))/game$num.agents)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
