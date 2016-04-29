\name{LoadGames}
\alias{LoadGames}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Load all sample games.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
LoadGames()
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
    games <- list()
    games$C.S.D.100 <- HeuristicGame("data/payoffs-CSD100.csv", 
        c("C", "S", "D"), c(100))
    games$C.S.D.13 <- HeuristicGame("data/payoffs-CSD13.csv", 
        c("C", "S", "D"), c(13))
    games$C.Sd.D.100 <- HeuristicGame("data/payoffs-CSdD100.csv", 
        c("C", "Sd", "D"), c(100))
    games$C.Sd.D.13 <- HeuristicGame("data/payoffs-CSdD13.csv", 
        c("C", "Sd", "D"), c(13))
    games$T.Sd.D.100 <- HeuristicGame("data/payoffs-TSdD100.csv", 
        c("T", "Sd", "D"), c(100))
    games$T.Sd.D.13 <- HeuristicGame("data/payoffs-TSdD13.csv", 
        c("T", "Sd", "D"), c(13))
    games$T.S.D.100 <- HeuristicGame("data/payoffs-TSD100.csv", 
        c("T", "S", "D"), c(100))
    games$T.S.D.13 <- HeuristicGame("data/payoffs-TSD13.csv", 
        c("T", "S", "D"), c(13))
    games
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
