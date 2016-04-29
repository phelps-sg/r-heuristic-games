\name{Analyse}
\alias{Analyse}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Method dispatcher
An
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Analyse(game, initial.values, times, parallel = F)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{game}{
%%     ~~Describe \code{game} here~~
}
  \item{initial.values}{
%%     ~~Describe \code{initial.values} here~~
}
  \item{times}{
%%     ~~Describe \code{times} here~~
}
  \item{parallel}{
%%     ~~Describe \code{parallel} here~~
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
Steve Phelps
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
function (game, initial.values, times, parallel = F) 
{
    UseMethod("Analyse")
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
